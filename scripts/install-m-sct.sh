#!/usr/bin/env bash
set -euo pipefail

mkdir -p "$HOME/.local/bin"

cat > "$HOME/.local/bin/m-sct-mark" <<'SCRIPT'
#!/usr/bin/env bash
xdotool keyup F8
sleep 0.05
xdotool key --clearmodifiers ctrl+space
SCRIPT

chmod +x "$HOME/.local/bin/m-sct-mark"

touch "$HOME/.xbindkeysrc"

if ! grep -q "m-sct-mark" "$HOME/.xbindkeysrc"; then
cat >> "$HOME/.xbindkeysrc" <<BIND

"$HOME/.local/bin/m-sct-mark"
F8
BIND
fi

killall xbindkeys 2>/dev/null || true
xbindkeys

echo
echo "m-sct installed."
echo
echo "Open Dolphin."
echo "Move with arrows."
echo "Press F8 to mark/unmark focused file."
