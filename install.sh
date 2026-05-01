#!/usr/bin/env bash
set -euo pipefail

REPO_BASE="https://raw.githubusercontent.com/willi84/test-pi/main"

echo "⬇️ Lade Test-Pi Dateien..."

curl -fsSL "$REPO_BASE/setup.sh" -o setup.sh
curl -fsSL "$REPO_BASE/config.env" -o config.env

chmod +x setup.sh

echo "✅ Fertig"
echo "📝 Config anpassen: nano config.env"
echo "🧪 Setup starten: ./setup.sh"
./setup.sh
