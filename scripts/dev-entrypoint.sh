#!/bin/sh
# Lazy-install entrypoint for the dev compose stack.
#
# Why: we bind-mount the source tree into the container for hot-reload, but
# the container image is plain `node:20-alpine` with no node_modules. If the
# user ran `npm install` on the host (macOS), those binaries won't run on
# Alpine. So we run `npm ci` inside the container, into a named volume that
# survives container restarts.
#
# First boot: node_modules volume is empty -> npm ci runs.
# Later boots: node_modules volume is populated -> install is skipped.
# After pulling a new package.json: clear the volume (`docker compose down -v`)
# or `rm -rf` inside the container.
set -eu

cd /app

# Prisma's alpine engine needs libssl. The hms-app production Dockerfile
# does `apk add --no-cache openssl` for the same reason. ~3MB, cached on
# the image, so it's cheap on restarts.
if ! apk info -e openssl >/dev/null 2>&1; then
  echo "[entrypoint] installing openssl (Prisma alpine engine needs libssl)"
  apk add --no-cache openssl
fi

if [ ! -d node_modules ] || [ -z "$(ls -A node_modules 2>/dev/null)" ]; then
  echo "[entrypoint] node_modules missing or empty -> running npm ci"
  npm ci
fi

# Cheap; regenerates @prisma/client from prisma/schema.prisma.
npx prisma generate

exec "$@"
