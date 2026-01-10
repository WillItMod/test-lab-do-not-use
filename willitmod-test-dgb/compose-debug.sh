#!/bin/sh
# Helper to run docker compose commands with the right env on Umbrel.
# Usage: ./compose-debug.sh ps   or   ./compose-debug.sh logs app
set -eu
APP_DIR="$(cd "$(dirname "$0")" && pwd)"
EXPORTS="$APP_DIR/exports.sh"
if [ ! -f "$EXPORTS" ]; then
  echo "exports.sh not found in $APP_DIR" >&2
  exit 1
fi
# shellcheck disable=SC1090
. "$EXPORTS"
APP_DATA_DIR="${APP_DIR}"
APP_PASSWORD="$(cat ~/umbrel/secrets/share-password 2>/dev/null || true)"
NETWORK_IP="$(ip route show default 2>/dev/null | awk '/default/ {print $9; exit}')"
export APP_DATA_DIR APP_PASSWORD NETWORK_IP
cd "$APP_DIR"
docker compose "$@"
