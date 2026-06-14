-- =============================================================================
-- Dev-only bridge: pg_uuidv7 → gen_random_uuid
-- -----------------------------------------------------------------------------
-- The summary service's canonical DDL uses uuidv7() in DEFAULT clauses
-- (4 places). Production assumes the pg_uuidv7 C extension is installed on
-- the HMS Postgres — see hms-docs/summary-service/data-model/schema.sql.
--
-- The vanilla postgres:17-alpine image used in dev does NOT include that
-- extension, so this bridge function provides a v4 UUID under the same
-- name. IDs remain unique and the DEFAULT clauses work; time-sortability
-- is lost in dev (the Prisma client uses its own client-side @default(uuid(7))
-- and is unaffected).
--
-- If you ever switch the dev image to a postgres build that ships with
-- pg_uuidv7, this file can be deleted — pg_dump will pick the real one up.
-- =============================================================================

CREATE EXTENSION IF NOT EXISTS pgcrypto;

CREATE OR REPLACE FUNCTION uuidv7() RETURNS uuid
LANGUAGE sql VOLATILE AS $$ SELECT gen_random_uuid() $$;
