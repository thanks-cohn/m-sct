# m-sct

## IMPORTANT: launch the PATCHED Dolphin, not the normal one

The full F8 -> F9 workflow depends on the patched Dolphin build from:

https://github.com/thanks-cohn/dolphin-copy-locations

If you open normal Dolphin from the application launcher/menu,
F9 will only copy ONE file path.

You must launch the patched Dolphin manually:

```bash
~/dev/dolphin-f9/build/bin/dolphin
```

Then the workflow becomes:

```text
move to file
F8
move to file
F8
move to file
F8
F9
paste newline-separated file paths
```

Example result:

```text
/home/user/Pictures/Screenshots/a1.png
/home/user/Pictures/Screenshots/a2.png
/home/user/Pictures/Screenshots/a3.png
```

`m-sct` handles keyboard-first marking.

`dolphin-copy-locations` handles exporting the selected set.

# m-sct

`m-sct` is a keyboard-first micro-selection tool for Dolphin and X11 Linux desktops.

It lets you move through files normally, then press one key to mark or unmark the currently focused file.

```text
Arrow keys -> move through files
F8         -> mark / unmark focused file
```

The idea is simple:

```text
move
mark
move
mark
move
mark
then use normal Dolphin actions
```

No dragging. No broad Shift selection. Less Ctrl-click precision work.

## What we accomplished on X11

On KDE Plasma running X11, we proved that Dolphin can be given a keyboard-first micro-selection workflow without writing a Dolphin plugin.

The working V0 uses:

- `xbindkeys` to bind a global key
- `xdotool` to send Dolphin's existing selection shortcut
- Dolphin's own selection behavior
- X11's mature synthetic-input support

The current default behavior is:

```text
F8 -> send Ctrl+Space to Dolphin
```

In practice, this creates a fast traversal-selection rhythm:

```text
focus file
press F8
move to another file
press F8
keep moving
```

The selected files remain inside Dolphin's normal selection system, so once files are marked you can use regular Dolphin actions:

- copy
- move
- delete
- compress
- rename
- open with
- service menus
- custom Dolphin actions

`m-sct` does not replace Dolphin. It adds a tiny keyboard-selection stance on top of it.

## Current platform support

Tested target:

```text
Garuda Linux
KDE Plasma
KWin X11
Dolphin
```

Expected compatible systems:

```text
Arch Linux / Garuda / EndeavourOS
KDE Plasma on X11
Dolphin file manager
```

Not yet supported:

```text
Wayland-native implementation
GNOME/Nautilus integration
non-X11 hotkey backend
```

Wayland support will likely require a different approach because Wayland intentionally restricts global synthetic input.

## Quick install

Clone the repo:

```bash
git clone git@github.com:thanks-cohn/m-sct.git
cd m-sct
```

Install:

```bash
./scripts/install-m-sct.sh
```

Then open Dolphin:

```text
Arrow keys -> move focus
F8         -> mark/unmark focused item
```

## Dependencies

On Arch/Garuda:

```bash
sudo pacman -S xdotool xbindkeys
```

The installer checks for these and tells you if they are missing.

## Scripts

### `scripts/install-m-sct.sh`

Installs the local `m-sct-mark` command into:

```text
~/.local/bin/m-sct-mark
```

and adds this binding to:

```text
~/.xbindkeysrc
```

```text
~/.local/bin/m-sct-mark
F8
```

It also restarts `xbindkeys`.

### `scripts/show-current-m-sct.sh`

Prints the installed local script and current `xbindkeys` config.

### `scripts/reload-m-sct.sh`

Restarts `xbindkeys` after config changes.

### `scripts/uninstall-m-sct.sh`

Removes the installed `m-sct-mark` command and removes the m-sct binding block from `~/.xbindkeysrc`.

## Philosophy

Modern file selection is still too mouse-heavy.

`m-sct` treats file selection as traversal:

```text
I see file.
I mark file.
I keep moving.
```

Tiny tool. Huge workflow shift.

The mouse should not be mandatory for precision file work.
