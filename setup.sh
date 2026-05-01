#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"
SETUP_CONFIG_FILE="$SCRIPT_DIR/config.env"

if [ ! -f "$SETUP_CONFIG_FILE" ]; then
  echo "❌ Config fehlt: $SETUP_CONFIG_FILE"
  exit 1
fi

# shellcheck disable=SC1090
source "$SETUP_CONFIG_FILE"

echo "🧪 Test-Pi Setup"
echo

echo "🏷️ KIOSK_HOSTNAME=${KIOSK_HOSTNAME:-}"
echo "🌐 KIOSK_URL=${KIOSK_URL:-}"

echo


echo
echo "✅ Test abgeschlossen — es wurde nichts installiert oder verändert."
