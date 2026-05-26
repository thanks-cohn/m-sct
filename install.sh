#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")" && pwd)"

mkdir -p "$HOME/.local/bin"
mkdir -p "$HOME/.local/share/kio/servicemenus"
mkdir -p "$HOME/.local/state/n0drag"

install -m755 "$ROOT/scripts/1up" "$HOME/.local/bin/1up"
install -m755 "$ROOT/scripts/c-frame" "$HOME/.local/bin/c-frame"
install -m755 "$ROOT/scripts/n0drag" "$HOME/.local/bin/n0drag"
install -m755 "$ROOT/scripts/spacer" "$HOME/.local/bin/spacer"
install -m755 "$ROOT/scripts/sendhere" "$HOME/.local/bin/sendhere"

install -m644 "$ROOT/servicemenus/1up.desktop" "$HOME/.local/share/kio/servicemenus/1up.desktop"
install -m644 "$ROOT/servicemenus/c-frame.desktop" "$HOME/.local/share/kio/servicemenus/c-frame.desktop"
install -m644 "$ROOT/servicemenus/n0drag.desktop" "$HOME/.local/share/kio/servicemenus/n0drag.desktop"
install -m644 "$ROOT/servicemenus/sendhere.desktop" "$HOME/.local/share/kio/servicemenus/sendhere.desktop"
install -m644 "$ROOT/servicemenus/spacer.desktop" "$HOME/.local/share/kio/servicemenus/spacer.desktop"

kbuildsycoca6 >/dev/null 2>&1 || true

echo
echo "Dolphin Ergonomix installed."
echo "Installed: 1UP, c-frame, n0drag, SendHere, SpacEr."
echo "Restart Dolphin if actions do not appear immediately."
