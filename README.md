# m-sct

Keyboard-first micro-selection for Dolphin and Linux file explorers.

m-sct lets you move through files normally, then press a single key to mark/unmark the currently focused item.

Current behavior:

F8 -> toggle focused file selection

This creates a traversal workflow:

move
mark
move
mark
move
mark

instead of constant Ctrl+left-click precision work.

Why:

Modern file selection is still too mouse-heavy.

m-sct treats selection like traversal instead of pointing.

Current V0 stack:

- xbindkeys
- xdotool
- X11
- Dolphin

Default key:

F8

Install:

./scripts/install-m-sct.sh

Usage:

Arrow keys -> move focus
F8         -> mark/unmark focused file

Tiny tool.
Huge workflow shift.
