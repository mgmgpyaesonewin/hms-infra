#!/bin/bash
# Dump HMS data (rows, no DDL) from the canonical source (RDS) into
# infra/db/05-hms-data.sql. Run this when you want the dev stack to
# have real test data.
#
# Usage:
#   RDS_URL='postgres://USER:PASS@HOST:5432/DB?sslmode=require' ./scripts/dump-hms-data.sh
#
# The 04-import-hms-data.sh script in infra/db/ (run by postgres on
# container init) loads this file with FK triggers disabled to work
# around the circular-FK warnings pg_dump emits for the HMS data.
#
# What gets dumped: data only, no owner / no privileges, with the
# 4 summary-service tables and the pgboss schema excluded.
#
# Note: the resulting file is large (~130MB for a typical HMS dev DB)
# and contains real patient data. infra/db/.gitignore keeps it out of
# the repo; you must regenerate it locally after a fresh clone.

set -euo pipefail

: "${RDS_URL:?Set RDS_URL to the source database, e.g. postgres://USER:PASS@HOST:5432/DB?sslmode=require}"

cd "$(dirname "$0")/.."

OUT=db/05-hms-data.dmp
TMP=$(mktemp)
trap 'rm -f "$TMP"' EXIT

CONTAINER=$(docker ps --filter "name=infra-postgres" --format "{{.Names}}" | head -1)
if [ -z "$CONTAINER" ]; then
  echo "error: no infra-postgres container running. Start the stack first: docker compose up -d postgres" >&2
  exit 1
fi

docker exec "$CONTAINER" sh -c "command -v pg_dump >/dev/null 2>&1 || apk add --no-cache postgresql16-client >/dev/null"

docker exec "$CONTAINER" pg_dump "$RDS_URL" \
  --data-only \
  --no-owner \
  --no-privileges \
  --exclude-schema=pgboss \
  --exclude-table=event_outbox \
  --exclude-table=consultation_fees_invoices \
  --exclude-table=consultation_fees_invoice_status_changes \
  --exclude-table=consultation_fees_invoice_adjustments \
  > "$TMP"

mv "$TMP" "$OUT"

COPY_COUNT=$(grep -c "^COPY " "$OUT" || true)
SIZE=$(du -h "$OUT" | cut -f1)
echo "dumped $COPY_COUNT tables ($SIZE) to $OUT"
echo "next: docker compose down -v && docker compose up -d  (re-apply on a fresh volume)"
echo
echo "warning: $OUT contains real HMS data and is gitignored. Don't commit it."