# YCare HMS — local dev stack

Spins up the full system on a single Docker network: Postgres, Redis, the
Next.js monolith (`hms-app`), and the summary service in both modes
(`summary-api`, `summary-worker`).

This is a **dev-only** stack. Production deploys are:

- **`hms-app`** — ECR + Kubernetes (see `hms-app/Dockerfile`).
- **`hms-summary-service`** — two systemd units on the on-prem host
  (see `hms-docs/summary-service/ops/`).
- **Postgres / Redis** — on the host (or whatever hospital IT provides).

## What's in the dev DB on first boot

Postgres auto-runs these from `./db` in alphabetical order on first init
(empty `postgres_data` volume):

| File | Purpose | Committed? |
| --- | --- | --- |
| `01-hms-schema.sql` | 236 HMS tables (dumped from prod RDS) | yes (small, 523k) |
| `02-summary-dev-bridge.sql` | plpgsql `uuidv7()` wrapper + pgcrypto (prod has the real C extension) | yes |
| `03-summary-schema.sql` | 4 summary-service tables + indexes | yes |
| `04-import-hms-data.sh` | wrapper that TRUNCATEs, disables FK triggers, loads the data, re-enables | yes |
| `05-hms-data.dmp` | real HMS rows from prod (`pg_dump --data-only`) | **no** — gitignored, ~140MB, contains real patient data |

If `05-hms-data.dmp` is missing, the dev stack still starts cleanly — it
just has empty HMS tables. To load real data, run `scripts/dump-hms-data.sh`
once (see "Populating real data" below), then `docker compose down -v && up`.

## One-time setup

```bash
cd infra

# 1. HMAC shared secret (the summary service refuses to start without it).
#    Pick any random string for local dev; production uses the same secret
#    the HMS BFF signs with.
openssl rand -hex 32 > secrets/hmac-shared-secret
chmod 0400 secrets/hmac-shared-secret

# 2. Copy your hms-app/.env into place if you don't have one yet.
cp ../hms-app/.env.example ../hms-app/.env
#    Edit it: set DATABASE_URL, AWS keys, module toggles, etc.

# 3. (Optional) copy this file's env overrides.
cp .env.example .env
```

## Start the stack

```bash
# From the infra/ directory:
docker compose up -d

# Or from the workspace root:
docker compose -f infra/docker-compose.yml up -d
```

What comes up:

| Service          | Host port | Notes                                          |
| ---------------- | --------- | ---------------------------------------------- |
| `postgres`       | 5433      | matches the legacy `hms-app/docker-compose.yml` |
| `redis`          | 6379      | local dev only                                 |
| `hms-app`        | 3000      | Turbopack dev server, hot-reload on save       |
| `summary-api`    | 4000      | Express, hot-reload via `tsx watch`            |
| `summary-worker` | —         | outbox poller; same image, `--mode=worker`     |

First boot takes a few minutes — each service's `node_modules` volume is
empty, so `dev-entrypoint.sh` runs `npm ci`. Subsequent boots are instant.

## Common commands

```bash
# Tail logs (all services, follow mode)
docker compose -f infra/docker-compose.yml logs -f

# Tail just the summary service
docker compose -f infra/docker-compose.yml logs -f summary-api summary-worker

# Health check
curl http://localhost:4000/healthz
# → {"status":"ok","db":"up","redis":"up"}

# Open a shell in a running container
docker compose -f infra/docker-compose.yml exec summary-api sh
docker compose -f infra/docker-compose.yml exec postgres psql -U admin -d ycare_hms_dev

# Reset the database (DESTRUCTIVE)
docker compose -f infra/docker-compose.yml down
docker volume rm infra_postgres_data

# Reset node_modules after editing package.json
docker compose -f infra/docker-compose.yml down
docker volume rm infra_hms-app_node_modules infra_summary-api_node_modules infra_summary-worker_node_modules
# (or simpler: `docker compose down -v` to nuke ALL volumes)
```

## Smoke test the summary service

```bash
# 1. Apply the new tables to the dev DB (one-time per fresh DB).
#    See hms-docs/summary-service/data-model/schema.sql for the DDL.
docker compose -f infra/docker-compose.yml exec postgres \
  psql -U admin -d ycare_hms_dev -f /dev/stdin < ../hms-docs/summary-service/data-model/schema.sql

# 2. Insert a fake outbox event to trigger the worker.
docker compose -f infra/docker-compose.yml exec postgres psql -U admin -d ycare_hms_dev <<'SQL'
INSERT INTO event_outbox (tenant_id, event_type, aggregate_id, payload)
VALUES (
  '00000000-0000-0000-0000-000000000001'::uuid,
  'opd_invoice.created',
  gen_random_uuid(),
  '{"eventId": "test-1", "tenantId": "00000000-0000-0000-0000-000000000001", "opdInvoiceId": "REPLACE_ME", "createdById": "REPLACE_ME"}'::jsonb
);
SQL
# (You also need a real OPD billing row for the handler to read; see the
# schema's notes on which HMS tables the worker queries.)
```

## Populating real data (optional)

If you want the dev stack to have real HMS rows (so the summary worker
can process real OPD billings end-to-end):

```bash
cd infra

# Generate the data dump from prod RDS (~140MB, gitignored).
RDS_URL='postgres://USER:PASS@HOST:5432/ycare_hms_dev?sslmode=require' \
  ./scripts/dump-hms-data.sh

# Wipe the dev volume and re-apply everything (schema + your data dump).
docker compose down -v
docker compose up -d
```

The data dump is loaded by `db/04-import-hms-data.sh` with FK triggers
disabled — the HMS data has circular FKs (departments ↔ users, bills ↔
opd_billings ↔ pharmacy_sales, etc.) that pg_dump can't satisfy without
this trick.

## Things to know

- **`DATABASE_URL` in `hms-app/.env` is overridden by the compose file.**
  The compose sets `DATABASE_URL=postgres://admin:testtest@postgres:5432/ycare_hms_dev`
  in the `environment:` block, which wins over the same var in your
  `env_file:`. This is intentional — inside the compose network, the
  `postgres` service is the right target; `localhost` would point at the
  container itself, where there's no Postgres. The value in `hms-app/.env`
  still matters when you run the app *outside* compose (e.g., `npm run dev`
  on the host pointing at the legacy `hms-app_postgres_data` volume). Don't
  "fix" the compose value to match your `.env` — it'll break the in-network
  connection. Other vars in `hms-app/.env` (module toggles, AWS keys, etc.)
  are loaded normally.
- **No BFF wiring yet.** The HMS doesn't yet insert into `event_outbox` at
  OPD-billing time (Phase 3 of the summary service, per its README). In
  this stack, the summary service runs in isolation; you exercise it by
  inserting outbox rows directly via `psql`.
- **Hot-reload works for source edits only.** Editing `package.json` (adding
  a dep) does **not** re-run `npm ci` — the volume is populated. See the
  `Reset node_modules` command above.
- **BIND_ADDRESS for the summary service is `0.0.0.0`** in this stack, so
  the hms-app container and the host can both reach it. Production binds to
  `127.0.0.1` (see ADR 0002 and the systemd unit).
- **HMAC verification is on by default.** Hitting `http://localhost:4000`
  with `curl` from the host gets a 401 — the BFF signs with the secret in
  `infra/secrets/hmac-shared-secret`. Use a real client, or sign by hand.
- **Database is the same one** that `hms-app/docker-compose up db` uses. If
  you've been running the legacy single-service compose, your existing
  `ycare_hms_dev` data is in a `hms-app_postgres_data` volume; the new
  compose uses `infra_postgres_data`. Don't expect data to carry over.
