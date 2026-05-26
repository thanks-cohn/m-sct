# dolphin-ergonomix

Dolphin Ergonomix is a plug-and-play toolbox of small KDE Dolphin workflow improvements.

The goal is simple:

```text
git clone
chmod +x install.sh
./install.sh
BOOM
```

This repo is for tiny scripts, service menus, patches, and launcher helpers that make Dolphin feel immediate, practical, keyboard-capable, and clipboard-friendly.

## Quick install

```bash
git clone git@github.com:thanks-cohn/dolphin-ergonomix.git
cd dolphin-ergonomix
chmod +x install.sh
./install.sh
```

Then restart Dolphin or run:

```bash
kbuildsycoca6
```

## What installs today

### 1UP

A Dolphin service-menu tool for selected files.

Current actions:

```text
1UP: Move selected item(s) up one directory
1UP: Copy selected file location(s)
```

The location-copy action copies selected paths as newline-separated text.

## Commands

Install everything:

```bash
./install.sh
```

Check installed state:

```bash
./status.sh
```

Uninstall installed Ergonomix files:

```bash
./uninstall.sh
```

## Installed locations

```text
~/.local/bin/1up
~/.local/share/kio/servicemenus/1up.desktop
```

## Philosophy

The filesystem should feel fast in your hands.

Not everything needs to be a giant app. Sometimes the correct fix is a tiny script, a service menu, or a three-line patch.

Dolphin already has the foundation.
Ergonomix is about making it feel obvious, immediate, and powerful.

## Related project

For patched native multi-file Copy Location behavior inside Dolphin itself, see:

```text
https://github.com/thanks-cohn/dolphin-copy-locations
```
