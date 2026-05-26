#!/usr/bin/env bash
set -euo pipefail

rm -f "$HOME/.local/bin/1up"
rm -f "$HOME/.local/bin/c-frame"
rm -f "$HOME/.local/bin/n0drag"
rm -f "$HOME/.local/bin/spacer"
rm -f "$HOME/.local/bin/sendhere"

rm -f "$HOME/.local/share/kio/servicemenus/1up.desktop"
rm -f "$HOME/.local/share/kio/servicemenus/c-frame.desktop"
rm -f "$HOME/.local/share/kio/servicemenus/n0drag.desktop"
rm -f "$HOME/.local/share/kio/servicemenus/sendhere.desktop"
rm -f "$HOME/.local/share/kio/servicemenus/spacer.desktop"

kbuildsycoca6 >/dev/null 2>&1 || true

echo "Dolphin Ergonomix removed."
