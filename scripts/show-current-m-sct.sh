#!/usr/bin/env bash
set -euo pipefail

echo "=== ~/.local/bin/m-sct-mark ==="
cat "$HOME/.local/bin/m-sct-mark" 2>/dev/null || echo "not found"

echo
echo "=== ~/.xbindkeysrc ==="
cat "$HOME/.xbindkeysrc" 2>/dev/null || echo "not found"
