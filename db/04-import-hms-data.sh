#!/bin/bash
# Loads the HMS data dump (05-hms-data.dmp) into the dev DB.
#
# The data dump is generated separately by ../scripts/dump-hms-data.sh
# and is NOT committed (see .gitignore). When 05-hms-data.dmp is missing
# from this directory, this script is a no-op — the dev stack still works,
# it just has no test data.
#
# Why we disable triggers: pg_dump emits warnings about circular FKs in
# the HMS data (departments ↔ users, bills ↔ opd_billings ↔ pharmacy_sales,
# etc.). Loading the data in the order pg_dump emits it would hit "FK
# constraint violated" errors. Setting session_replication_role = 'replica'
# makes the session skip user triggers (including the FK enforcement
# triggers) for the duration of the load. We restore normal role at the
# end so the dev DB behaves normally afterwards.
#
# Runs in /docker-entrypoint-initdb.d/ AFTER 01-hms-schema.sql,
# 02-summary-dev-bridge.sql, 03-summary-schema.sql (alphabetical order
# in this directory: 01-, 02-, 03-, 04-, ...).

set -euo pipefail

DATA_FILE=/docker-entrypoint-initdb.d/05-hms-data.dmp

if [ ! -s "$DATA_FILE" ]; then
  echo "[04-import-hms-data] 05-hms-data.dmp not found or empty — skipping (run ../scripts/dump-hms-data.sh to generate)"
  exit 0
fi

echo "[04-import-hms-data] truncating existing rows in HMS tables"
TABLES=$(psql -v ON_ERROR_STOP=1 -U "$POSTGRES_USER" -d "$POSTGRES_DB" -tAc \
  "SELECT string_agg(format('%I.%I', schemaname, tablename), ', ')
   FROM pg_tables WHERE schemaname = 'public'")
psql -v ON_ERROR_STOP=1 -U "$POSTGRES_USER" -d "$POSTGRES_DB" -c \
  "TRUNCATE TABLE $TABLES RESTART IDENTITY CASCADE"

echo "[04-import-hms-data] disabling FK triggers for the load (in the SAME session as the load — each psql call is a new session, so this can't be a separate -c)"
echo "[04-import-hms-data] loading $(du -h "$DATA_FILE" | cut -f1) of data from $DATA_FILE"
# Wrap the whole load in a single transaction so a mid-load failure rolls
# back cleanly (rather than leaving the dev DB half-loaded). The leading
# SET must be in the SAME session as the COPY statements; prepending it
# to the data stream keeps the session_replication_role = 'replica' in
# effect for the entire load. The data file's own SET statements
# (statement_timeout, lock_timeout, etc.) don't touch this GUC.
psql -v ON_ERROR_STOP=1 -U "$POSTGRES_USER" -d "$POSTGRES_DB" \
  --single-transaction \
  --set "ON_ERROR_STOP=on" \
  < <(printf "SET session_replication_role = 'replica';\n"; cat "$DATA_FILE")

echo "[04-import-hms-data] re-enabling triggers (new session)"
psql -v ON_ERROR_STOP=1 -U "$POSTGRES_USER" -d "$POSTGRES_DB" -c "SET session_replication_role = 'origin';"

echo "[04-import-hms-data] updating planner statistics"
psql -v ON_ERROR_STOP=1 -U "$POSTGRES_USER" -d "$POSTGRES_DB" -c "ANALYZE;"

# Spot-check a few key tables.
echo "[04-import-hms-data] row counts after load:"
psql -v ON_ERROR_STOP=1 -U "$POSTGRES_USER" -d "$POSTGRES_DB" -tAc "
  SELECT '  ' || relname || ': ' || n_live_tup
  FROM pg_stat_user_tables
  WHERE schemaname = 'public'
    AND relname IN ('users', 'patients', 'doctors', 'stores', 'services',
                    'opd_billings', 'opd_billing_services')
  ORDER BY relname;
"