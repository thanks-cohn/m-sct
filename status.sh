#!/usr/bin/env bash
set -euo pipefail

echo "=== Dolphin Ergonomix Status ==="
echo

for f in "$HOME/.local/bin/1up" "$HOME/.local/bin/c-frame" "$HOME/.local/bin/n0drag" "$HOME/.local/bin/spacer" "$HOME/.local/bin/sendhere"
do
  if [ -f "$f" ]; then
    echo "[OK] $f"
  else
    echo "[MISSING] $f"
  fi
done

echo

for f in "$HOME/.local/share/kio/servicemenus/1up.desktop" "$HOME/.local/share/kio/servicemenus/c-frame.desktop" "$HOME/.local/share/kio/servicemenus/n0drag.desktop" "$HOME/.local/share/kio/servicemenus/sendhere.desktop" "$HOME/.local/share/kio/servicemenus/spacer.desktop"
do
  if [ -f "$f" ]; then
    echo "[OK] $f"
  else
    echo "[MISSING] $f"
  fi
done
