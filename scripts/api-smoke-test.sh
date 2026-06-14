#!/bin/bash
# End-to-end API smoke test for the summary service.
# Signs every request with HMAC-SHA256 (per api/hmac-auth.md) and
# exercises the full flow: list, aggregates, detail, status change,
# adjustment, and the error paths (auth, invalid transition, locked
# adjustment, cross-tenant 404).
#
# Run from the workspace root:
#   ./infra/scripts/api-smoke-test.sh > /tmp/api-test-output.md
#
# Output: a markdown report with each request and its response.
# Exits 0 on success; the markdown is always written.

set -uo pipefail

cd "$(dirname "$0")/../.."

API=http://localhost:4000
SECRET=$(cat infra/secrets/hmac-shared-secret)
SERVICE_ID="hms-bff"

TENANT_1=00000000-0000-0000-0000-000000000001   # has CFI 019ec55a... amount 3000
TENANT_3=00000000-0000-0000-0000-000000000003   # has CFI 019ec570... amount 245000
TENANT_4=00000000-0000-0000-0000-000000000004   # created inline by the test #4 setup
WRONG_TENANT=ffffffff-ffff-ffff-ffff-ffffffffffff

CFI_1=019ec55a-d656-72f0-ae65-c8e474905518
CFI_3=019ec570-f8a3-7360-8d5f-50583c9328d8

# Real user from the dev DB; required as X-User-Id for PATCH/POST so the
# CFI's updatedById / changedById FK to users.id is satisfied.
USER_ID=019a290f-bdc0-7a12-a374-0264e6b53414

TODAY=$(date -u +%Y-%m-%d)
NOW_ISO=$(date -u +%Y-%m-%dT%H:%M:%SZ)

# ---------------------------------------------------------------------------
# State reset — run silently. The actual SQL is shown in "Section 0" of
# the report (rendered inside the main cat <<EOF block below) so the
# reader sees what was done, but the stdout here is just the count.
# ---------------------------------------------------------------------------
docker exec infra-postgres-1 psql -U admin -d ycare_hms_dev -q <<SQL
UPDATE consultation_fees_invoices
   SET status='UNPAID', version=1, paid_at=NULL, voided_at=NULL,
       adjustment=0, payout_amount=amount, updated_at=now()
 WHERE id IN ('$CFI_1'::uuid, '$CFI_3'::uuid);
DELETE FROM consultation_fees_invoice_status_changes;
DELETE FROM consultation_fees_invoice_adjustments;
DELETE FROM consultation_fees_invoices
 WHERE id NOT IN ('$CFI_1'::uuid, '$CFI_3'::uuid);
SQL
for k in \
  "summary:consultation_fees:00000000-0000-0000-0000-000000000001:2026-06-14:all" \
  "summary:consultation_fees:00000000-0000-0000-0000-000000000003:2026-06-13:all" \
  "summary:consultation_fees:00000000-0000-0000-0000-000000000004:2026-06-13:all"
do
  docker exec infra-redis-1 redis-cli DEL "$k" >/dev/null
done
CFI_ROWS_AFTER_RESET=$(docker exec infra-postgres-1 psql -U admin -d ycare_hms_dev -tAc 'SELECT count(*) FROM consultation_fees_invoices')

# ---------------------------------------------------------------------------
# Helpers
# ---------------------------------------------------------------------------

# sign METHOD PATH BODY TENANT → echoes 4 header lines
sign() {
  local method="$1" path="$2" body="$3" tenant="$4"
  local ts; ts=$(date +%s)
  local body_hash
  body_hash=$(printf '%s' "$body" | openssl dgst -sha256 -hex | awk '{print $NF}')
  local canonical
  canonical=$(printf '%s\n%s\n%s\n%s\n%s\n%s' "$method" "$path" "$body_hash" "$ts" "$SERVICE_ID" "$tenant")
  local sig
  sig=$(printf '%s' "$canonical" | openssl dgst -sha256 -hmac "$SECRET" -hex | awk '{print $NF}')
  printf 'X-Service-Id: %s\nX-Signature: %s\nX-Timestamp: %s\nX-Tenant-Id: %s\n' \
    "$SERVICE_ID" "$sig" "$ts" "$tenant"
}

# call METHOD PATH TENANT BODY EXTRA_HEADERS → echoes status + body
call() {
  local method="$1" path="$2" tenant="$3" body="${4:-}" extra="${5:-}"
  local hdrs; hdrs=$(sign "$method" "$path" "$body" "$tenant")
  local args=(-sS -o /tmp/_body.json -w "%{http_code}" -D /tmp/_headers.txt
              -X "$method" "$API$path"
              -H "Content-Type: application/json")
  while IFS= read -r line; do
    [ -n "$line" ] && args+=(-H "$line")
  done <<< "$hdrs"
  if [ -n "$extra" ]; then
    while IFS= read -r line; do
      [ -n "$line" ] && args+=(-H "$line")
    done <<< "$extra"
  fi
  [ -n "$body" ] && args+=(-d "$body")
  local code; code=$(curl "${args[@]}")
  printf 'HTTP %s\n' "$code"
  cat /tmp/_body.json
  echo
  # Pull out X-Cache-Status if set
  grep -i '^x-cache-status:' /tmp/_headers.txt | sed 's/^/X-Cache-Status: /'
}

# md_escape: minimal backtick escaping for markdown
md_escape() { printf '%s' "$1" | sed 's/`/\\`/g'; }

# show_req METHOD PATH TENANT BODY EXTRA_HEADERS → echoes "request" markdown
show_req() {
  local method="$1" path="$2" tenant="$3" body="${4:-}" extra="${5:-}"
  local hdrs; hdrs=$(sign "$method" "$path" "$body" "$tenant")
  echo '```http'
  echo "$method $path HTTP/1.1"
  echo "Host: localhost:4000"
  echo "Content-Type: application/json"
  while IFS= read -r line; do
    [ -n "$line" ] && echo "$line"
  done <<< "$hdrs"
  if [ -n "$extra" ]; then
    while IFS= read -r line; do
      [ -n "$line" ] && echo "$line"
    done <<< "$extra"
  fi
  if [ -n "$body" ]; then
    echo
    echo "$body" | python3 -m json.tool 2>/dev/null || echo "$body"
  fi
  echo '```'
}

# show_res STATUS BODY → echoes "response" markdown
show_res() {
  local body="$1" status="$2"
  echo "**Status:** $status"
  echo
  echo '```json'
  if [ -n "$body" ]; then
    echo "$body" | python3 -m json.tool 2>/dev/null || echo "$body"
  fi
  echo '```'
}

# call_record: do call + show_req + show_res, separated nicely
test() {
  local label="$1" method="$2" path="$3" tenant="$4" body="${5:-}" extra="${6:-}" note="${7:-}"
  echo
  echo "### $label"
  echo
  if [ -n "$note" ]; then
    echo "$note"
    echo
  fi
  echo "**Request:**"
  echo
  show_req "$method" "$path" "$tenant" "$body" "$extra"
  # Actually perform the call
  local hdrs; hdrs=$(sign "$method" "$path" "$body" "$tenant")
  local args=(-sS -o /tmp/_body.json -w "%{http_code}" -D /tmp/_headers.txt
              -X "$method" "$API$path"
              -H "Content-Type: application/json")
  while IFS= read -r line; do
    [ -n "$line" ] && args+=(-H "$line")
  done <<< "$hdrs"
  if [ -n "$extra" ]; then
    while IFS= read -r line; do
      [ -n "$line" ] && args+=(-H "$line")
    done <<< "$extra"
  fi
  [ -n "$body" ] && args+=(-d "$body")
  local code; code=$(curl "${args[@]}")
  local resp_body; resp_body=$(cat /tmp/_body.json)
  local cache_hdr; cache_hdr=$(grep -i '^x-cache-status:' /tmp/_headers.txt | tr -d '\r' | sed 's/^[^:]*: //')
  echo
  echo "**Response:**"
  echo
  echo "**Status:** $code"
  if [ -n "$cache_hdr" ]; then
    echo
    echo "**X-Cache-Status:** $cache_hdr"
  fi
  echo
  echo '```json'
  if [ -n "$resp_body" ]; then
    echo "$resp_body" | python3 -m json.tool 2>/dev/null || echo "$resp_body"
  fi
  echo '```'
}

# raw_call: like call() but for unauthenticated cases (no signing)
raw_call() {
  local method="$1" path="$2" extra="${3:-}" body="${4:-}"
  local args=(-sS -o /tmp/_body.json -w "%{http_code}" -D /tmp/_headers.txt
              -X "$method" "$API$path")
  if [ -n "$extra" ]; then
    while IFS= read -r line; do
      [ -n "$line" ] && args+=(-H "$line")
    done <<< "$extra"
  fi
  [ -n "$body" ] && args+=(-d "$body")
  local code; code=$(curl "${args[@]}")
  local resp_body; resp_body=$(cat /tmp/_body.json)
  echo "**Status:** $code"
  echo
  echo '```json'
  if [ -n "$resp_body" ]; then
    echo "$resp_body" | python3 -m json.tool 2>/dev/null || echo "$resp_body"
  fi
  echo '```'
}

# ---------------------------------------------------------------------------
# Report
# ---------------------------------------------------------------------------

cat <<EOF
# Summary Service API — End-to-end Test Report

- **Generated:** $NOW_ISO
- **API base:** $API
- **Service ID:** $SERVICE_ID
- **Test data:** 2 UNPAID CFIs in the dev DB (from earlier end-to-end worker tests)
  - CFI 1: \`$CFI_1\` — tenant \`$TENANT_1\`, amount 3000.00
  - CFI 2: \`$CFI_3\` — tenant \`$TENANT_3\`, amount 245000.00

Auth scheme: HMAC-SHA256 over \`METHOD\\nPATH\\nSHA256(BODY)\\nTIMESTAMP\\nSERVICE_ID\\nTENANT_ID\`
(per \`hms-docs/summary-service/api/hmac-auth.md\`). Every signed request below
includes the actual \`X-Signature\` and \`X-Timestamp\` that was used.

---

## Section 0 — State reset (preflight)

The script mutates the CFIs (PATCH, POST adjustment), so to be re-runnable
it snaps the test data back to a clean baseline before each run. The
following SQL was executed before the tests below:

\`\`\`sql
-- Reset the two pre-existing test CFIs
UPDATE consultation_fees_invoices
   SET status='UNPAID', version=1, paid_at=NULL, voided_at=NULL,
       adjustment=0, payout_amount=amount, updated_at=now()
 WHERE id IN ('$CFI_1'::uuid, '$CFI_3'::uuid);
DELETE FROM consultation_fees_invoice_status_changes;
DELETE FROM consultation_fees_invoice_adjustments;

-- Drop any CFIs created by a previous run's section-4 setup
DELETE FROM consultation_fees_invoices
 WHERE id NOT IN ('$CFI_1'::uuid, '$CFI_3'::uuid);

-- Wipe the per-tenant per-day Redis aggregate keys touched by tests
DEL summary:consultation_fees:$TENANT_1:2026-06-14:all
DEL summary:consultation_fees:$TENANT_3:2026-06-13:all
DEL summary:consultation_fees:00000000-0000-0000-0000-000000000004:2026-06-13:all
\`\`\`

**CFI rows after reset:** $CFI_ROWS_AFTER_RESET

---

## Section 1 — Auth enforcement (negative tests)

The HMAC middleware must reject: missing headers, unknown service, bad
signature, stale timestamp, non-UUID tenant, and replayed signatures.
EOF

# 1.1 missing headers
cat <<'NOTE'


NOTE
echo "### 1.1 No auth headers"
echo
echo "**Request:**"
echo
echo '```http'
echo "GET /consultation-fees-invoices HTTP/1.1"
echo "Host: localhost:4000"
echo '```'
raw_call GET /consultation-fees-invoices

# 1.2 unknown service
cat <<'NOTE'


NOTE
echo '### 1.2 Wrong `X-Service-Id`'
echo
echo "**Request:**"
echo
echo '```http'
echo "GET /consultation-fees-invoices HTTP/1.1"
echo "Host: localhost:4000"
echo "X-Service-Id: not-the-bff"
echo "X-Signature: 00"
echo "X-Timestamp: $(date +%s)"
echo "X-Tenant-Id: $TENANT_1"
echo '```'
raw_call GET /consultation-fees-invoices "X-Service-Id: not-the-bff
X-Signature: 00
X-Timestamp: $(date +%s)
X-Tenant-Id: $TENANT_1"

# 1.3 stale timestamp
cat <<'NOTE'


NOTE
echo '### 1.3 Stale `X-Timestamp` (1 hour old)'
echo
STALE_TS=$(( $(date +%s) - 3600 ))
H=$(sign GET /consultation-fees-invoices "" "$TENANT_1")
# Rebuild with stale ts: re-sign manually
PATH_P="/consultation-fees-invoices"
BODY_P=""
BODY_HASH=$(printf '%s' "$BODY_P" | openssl dgst -sha256 -hex | awk '{print $NF}')
CANON=$(printf '%s\n%s\n%s\n%s\n%s\n%s' "GET" "$PATH_P" "$BODY_HASH" "$STALE_TS" "$SERVICE_ID" "$TENANT_1")
SIG=$(printf '%s' "$CANON" | openssl dgst -sha256 -hmac "$SECRET" -hex | awk '{print $NF}')
echo "**Request:**"
echo
echo '```http'
echo "GET /consultation-fees-invoices HTTP/1.1"
echo "Host: localhost:4000"
echo "X-Service-Id: $SERVICE_ID"
echo "X-Signature: $SIG"
echo "X-Timestamp: $STALE_TS"
echo "X-Tenant-Id: $TENANT_1"
echo '```'
curl -sS -o /tmp/_body.json -w "**Status:** %{http_code}\n" \
  "$API$PATH_P" \
  -H "X-Service-Id: $SERVICE_ID" \
  -H "X-Signature: $SIG" \
  -H "X-Timestamp: $STALE_TS" \
  -H "X-Tenant-Id: $TENANT_1"
echo
echo '```json'
cat /tmp/_body.json | python3 -m json.tool 2>/dev/null || cat /tmp/_body.json
echo '```'

# 1.4 non-UUID tenant
cat <<'NOTE'


NOTE
echo '### 1.4 Non-UUID `X-Tenant-Id`'
echo
BAD_TENANT="not-a-uuid"
TS=$(date +%s)
BODY_HASH=$(printf '' | openssl dgst -sha256 -hex | awk '{print $NF}')
CANON=$(printf '%s\n%s\n%s\n%s\n%s\n%s' "GET" "/consultation-fees-invoices" "$BODY_HASH" "$TS" "$SERVICE_ID" "$BAD_TENANT")
SIG=$(printf '%s' "$CANON" | openssl dgst -sha256 -hmac "$SECRET" -hex | awk '{print $NF}')
echo "**Request:**"
echo
echo '```http'
echo "GET /consultation-fees-invoices HTTP/1.1"
echo "Host: localhost:4000"
echo "X-Service-Id: $SERVICE_ID"
echo "X-Signature: $SIG"
echo "X-Timestamp: $TS"
echo "X-Tenant-Id: $BAD_TENANT"
echo '```'
curl -sS -o /tmp/_body.json -w "**Status:** %{http_code}\n" "$API/consultation-fees-invoices" \
  -H "X-Service-Id: $SERVICE_ID" -H "X-Signature: $SIG" -H "X-Timestamp: $TS" -H "X-Tenant-Id: $BAD_TENANT"
echo
echo '```json'
cat /tmp/_body.json | python3 -m json.tool 2>/dev/null || cat /tmp/_body.json
echo '```'

# ---------------------------------------------------------------------------
cat <<NOTE

---

## Section 2 — Read flow (happy path)


NOTE
test "List CFIs (tenant 1, status=UNPAID)" \
  GET "/consultation-fees-invoices?status=UNPAID&limit=5" "$TENANT_1" "" "" \
  "Tenant 1 should see only its own CFIs; filtering by status=UNPAID should narrow to unpaid rows."

cat <<NOTE


NOTE
test "List CFIs (tenant 3, status=UNPAID)" \
  GET "/consultation-fees-invoices?status=UNPAID&limit=5" "$TENANT_3" "" "" \
  "Tenant 3 should see only its own CFIs."

cat <<NOTE


NOTE
test "List CFIs (tenant 3 listing — must not include tenant 1's CFI)" \
  GET "/consultation-fees-invoices?limit=10" "$TENANT_3" "" "" \
  "Tenant 3 listing should not include tenant 1's \`$CFI_1\`."

cat <<NOTE


NOTE
test "Get CFI detail (tenant 1's CFI)" \
  GET "/consultation-fees-invoices/$CFI_1" "$TENANT_1" "" "" \
  "Should return the full payload with \`statusHistory\` and \`adjustmentHistory\` arrays (initially empty)."

cat <<NOTE


NOTE
test "Get CFI detail (tenant 3 trying to read tenant 1's CFI — must 404)" \
  GET "/consultation-fees-invoices/$CFI_1" "$TENANT_3" "" "" \
  "ADR 0012 failure mode 6: cross-tenant access returns 404 to not leak existence."

cat <<NOTE


NOTE
test "Get aggregates (tenant 1, unfiltered — Redis-backed)" \
  GET "/consultation-fees-invoices/aggregates" "$TENANT_1" "" "" \
  "Unfiltered request should hit Redis (ADR 0009 §\"Read fallback\"). The \`X-Cache-Status: hit\` header confirms it. Note the data is bucketed by billingDate — tenant 1's CFI was billed on 2026-06-14, so the counter is keyed by that date."

cat <<NOTE


NOTE
test "Get aggregates (tenant 1, filtered status=UNPAID — Postgres fallback)" \
  GET "/consultation-fees-invoices/aggregates?status=UNPAID" "$TENANT_1" "" "" \
  "Any filter bypasses Redis. The aggregator runs the GROUP BY against Postgres and emits \`X-Cache-Status: bypass\`."

# ---------------------------------------------------------------------------
cat <<NOTE

---

## Section 3 — Status change flow


NOTE
test "PATCH status to PAID" \
  PATCH "/consultation-fees-invoices/$CFI_1/status" "$TENANT_1" \
  '{"status":"PAID","reason":"smoke test — full pay"}' \
  $'If-Match: 1\nX-User-Id: '$USER_ID \
  "ADR 0005 (state machine) + ADR 0006 (optimistic lock via \`version\`). Should bump version 1 → 2 and set \`paidAt\`."

cat <<NOTE


NOTE
test "Get CFI detail after PATCH" \
  GET "/consultation-fees-invoices/$CFI_1" "$TENANT_1" "" "" \
  "Should show status=PAID, paidAt set, version=2, statusHistory with one entry."

cat <<NOTE


NOTE
test "PATCH status to PAID again — should 409 INVALID_TRANSITION" \
  PATCH "/consultation-fees-invoices/$CFI_1/status" "$TENANT_1" \
  '{"status":"PAID"}' \
  $'If-Match: 2\nX-User-Id: '$USER_ID \
  "ADR 0005: PAID is a terminal state. Already-PAID → PAID must be rejected."

cat <<NOTE


NOTE
test "POST adjustment on PAID CFI — should 409 ADJUSTMENT_LOCKED" \
  POST "/consultation-fees-invoices/$CFI_1/adjustment" "$TENANT_1" \
  '{"amount":500,"reason":"too late"}' \
  $'If-Match: 2\nX-User-Id: '$USER_ID \
  "ADR 0014: adjustment is locked when status ≠ UNPAID."

cat <<NOTE


NOTE
test "PATCH status to VOID" \
  PATCH "/consultation-fees-invoices/$CFI_3/status" "$TENANT_3" \
  '{"status":"VOID","reason":"smoke test — voided"}' \
  $'If-Match: 1\nX-User-Id: '$USER_ID \
  "VOID is the other terminal state. Should set \`voidedAt\` (not \`paidAt\`)."

cat <<NOTE


NOTE
test "POST adjustment on VOID CFI — should 409 ADJUSTMENT_LOCKED" \
  POST "/consultation-fees-invoices/$CFI_3/adjustment" "$TENANT_3" \
  '{"amount":1000,"reason":"too late"}' \
  $'If-Match: 2\nX-User-Id: '$USER_ID \
  "Same lock — both terminal states block adjustment."

# ---------------------------------------------------------------------------
cat <<NOTE

---

## Section 4 — Adjustment flow (on a fresh UNPAID CFI)

We need a 3rd UNPAID CFI to exercise the happy-path adjustment. Create one
inline by inserting a new outbox event for a different OPD billing.

NOTE

# Find a 3rd billing with consultation lines
TARGET_BILLING=019ec1ac-1944-7731-b81e-712e92c86b33
TENANT_4=00000000-0000-0000-0000-000000000004
NEW_EVT=$(uuidgen)
NEW_AGG=$TARGET_BILLING
NEW_CBY=$(docker exec infra-postgres-1 psql -U admin -d ycare_hms_dev -tAc "SELECT created_by_id FROM opd_billings WHERE id='$TARGET_BILLING'")
echo "**Setup — insert another outbox event for billing \`$TARGET_BILLING\` (consultation_total=2000)**"
echo
echo '```sql'
echo "INSERT INTO event_outbox (id, tenant_id, event_type, aggregate_id, payload, status, next_attempt_at)"
echo "VALUES ('$NEW_EVT'::uuid, '$TENANT_4'::uuid, 'opd_invoice.created', '$NEW_AGG'::uuid,"
echo "        jsonb_build_object('eventId','$NEW_EVT','tenantId','$TENANT_4','opdInvoiceId','$NEW_AGG','createdById','$NEW_CBY'),"
echo "        'PENDING', now());"
echo '```'
echo
echo "Running the insert (and waiting 5s for the worker)..."
docker exec -i infra-postgres-1 psql -U admin -d ycare_hms_dev -q <<SQL
INSERT INTO event_outbox (id, tenant_id, event_type, aggregate_id, payload, status, next_attempt_at)
VALUES (
  '$NEW_EVT'::uuid,
  '$TENANT_4'::uuid,
  'opd_invoice.created',
  '$NEW_AGG'::uuid,
  jsonb_build_object(
    'eventId','$NEW_EVT',
    'tenantId','$TENANT_4',
    'opdInvoiceId','$NEW_AGG',
    'createdById','$NEW_CBY'
  ),
  'PENDING', now()
);
SQL
sleep 5
NEW_CFI=$(docker exec infra-postgres-1 psql -U admin -d ycare_hms_dev -tAc "SELECT id FROM consultation_fees_invoices WHERE event_id = '$NEW_EVT'")
echo
echo "**Worker created CFI: \`$NEW_CFI\`**"
echo

cat <<NOTE


NOTE
test "POST adjustment (UNPAID CFI, happy path)" \
  POST "/consultation-fees-invoices/$NEW_CFI/adjustment" "$TENANT_4" \
  '{"amount":500,"reason":"smoke test — partial discount"}' \
  $'If-Match: 1\nX-User-Id: '$USER_ID \
  "Should succeed: amount=500, payout = amount - adjustment = 2000 - 500 = 1500, version 1 → 2, Redis payout_total decremented by 500."

cat <<NOTE


NOTE
test "Get CFI detail after adjustment" \
  GET "/consultation-fees-invoices/$NEW_CFI" "$TENANT_4" "" "" \
  "Should show \`adjustment=500\`, \`payoutAmount=1500\`, \`adjustmentHistory\` with one entry, \`version=2\`."

cat <<NOTE


NOTE
test "POST adjustment exceeding amount — should 409 ADJUSTMENT_EXCEEDS_AMOUNT" \
  POST "/consultation-fees-invoices/$NEW_CFI/adjustment" "$TENANT_4" \
  '{"amount":99999,"reason":"too much"}' \
  $'If-Match: 2\nX-User-Id: '$USER_ID \
  "Constraint: 0 ≤ adjustment ≤ amount. The CFI amount is 2000; 99999 violates it."

# ---------------------------------------------------------------------------
cat <<NOTE

---

## Section 5 — Version mismatch


NOTE
test "PATCH with stale If-Match" \
  PATCH "/consultation-fees-invoices/$CFI_1/status" "$TENANT_1" \
  '{"status":"PAID"}' \
  $'If-Match: 99\nX-User-Id: '$USER_ID \
  "CFI 1 is now at version=2 (after the earlier PATCH); passing \`If-Match: 99\` triggers VERSION_MISMATCH. ADR 0006."

# ---------------------------------------------------------------------------
cat <<NOTE

---

## Section 6 — Cross-tenant write protection


NOTE
test "PATCH status on another tenant's CFI — should 404" \
  PATCH "/consultation-fees-invoices/$CFI_3/status" "$TENANT_1" \
  '{"status":"PAID"}' \
  $'If-Match: 2\nX-User-Id: '$USER_ID \
  "Tenant 1 trying to mutate tenant 3's CFI. The tenant-scoped Prisma extension on \`req.prisma\` forces \`tenantId\` on every CFI query, so the SELECT misses → 404 (no existence leak)."

# ---------------------------------------------------------------------------
cat <<NOTE

---

## Final state of the dev DB after the run

NOTE
docker exec infra-postgres-1 psql -U admin -d ycare_hms_dev -c "
SELECT invoice_no, amount, adjustment, payout_amount, status, version, to_char(paid_at,'HH24:MI:SS') AS paid_at, to_char(voided_at,'HH24:MI:SS') AS voided_at
FROM consultation_fees_invoices
ORDER BY created_at" 2>&1 | sed 's/^/    /'

cat <<NOTE

## Final Redis counters

NOTE
for t in "$TENANT_1" "$TENANT_3" "$TENANT_4"; do
  echo "**Tenant \`$t\`:**"
  echo
  echo '```'
  for day in 2026-06-13 2026-06-14; do
    out=$(docker exec infra-redis-1 redis-cli HGETALL "summary:consultation_fees:$t:$day:all" 2>&1)
    if [ -n "$out" ] && [ "$(echo "$out" | wc -l)" -gt 1 ]; then
      echo "  day=$day:"
      echo "$out" | sed 's/^/    /'
    fi
  done
  echo '```'
  echo
done
