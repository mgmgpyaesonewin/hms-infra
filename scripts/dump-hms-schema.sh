#!/bin/bash
# Re-dump the HMS schema from the canonical source (RDS) into
# infra/db/01-hms-schema.sql. Run this when the production schema changes
# and you want the dev stack to reflect the new shape.
#
# Usage:
#   RDS_URL='postgres://USER:PASS@HOST:5432/DB?sslmode=require' ./scripts/dump-hms-schema.sh
#
# The script runs pg_dump inside the dev postgres container (so we don't
# need a local psql install) and writes the result to
# infra/db/01-hms-schema.sql. Run from the infra/ directory.
#
# What gets dumped: schema only (no data), no owner / no privileges, with
# the 4 summary-service tables excluded (they're applied separately by
# 03-summary-schema.sql).

set -euo pipefail

: "${RDS_URL:?Set RDS_URL to the source database, e.g. postgres://USER:PASS@HOST:5432/DB?sslmode=require}"

cd "$(dirname "$0")/.."

OUT=db/01-hms-schema.sql
TMP=$(mktemp)
trap 'rm -f "$TMP"' EXIT

# Find the running dev postgres container. If the stack is down, start it
# (the user probably wants the schema before bringing the stack up, so we
# don't auto-start — fail loudly instead).
CONTAINER=$(docker ps --filter "name=infra-postgres" --format "{{.Names}}" | head -1)
if [ -z "$CONTAINER" ]; then
  echo "error: no infra-postgres container running. Start the stack first: docker compose up -d postgres" >&2
  exit 1
fi

# The alpine image ships with postgresql-client only on dev DBs that have
# already done an apk add (see dev-entrypoint.sh). If pg_dump isn't there,
# install it. ~3MB.
docker exec "$CONTAINER" sh -c "command -v pg_dump >/dev/null 2>&1 || apk add --no-cache postgresql16-client >/dev/null"

docker exec "$CONTAINER" pg_dump "$RDS_URL" \
  --schema-only \
  --no-owner \
  --no-privileges \
  --exclude-schema=pgboss \
  --exclude-table=event_outbox \
  --exclude-table=consultation_fees_invoices \
  --exclude-table=consultation_fees_invoice_status_changes \
  --exclude-table=consultation_fees_invoice_adjustments \
  > "$TMP"

mv "$TMP" "$OUT"

# Quick sanity check.
TABLE_COUNT=$(grep -c "^CREATE TABLE" "$OUT" || true)
echo "dumped $TABLE_COUNT tables to $OUT"
echo "next: docker compose down -v && docker compose up -d  (re-apply on a fresh volume)"
