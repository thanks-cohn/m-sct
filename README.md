# dolphin-ergonomix

Dolphin Ergonomix is a plug-and-play toolbox of small KDE Dolphin workflow improvements.

The goal:

git clone
chmod +x install.sh
./install.sh
profit

## Quick install

git clone git@github.com:thanks-cohn/dolphin-ergonomix.git
cd dolphin-ergonomix
chmod +x install.sh
./install.sh

Restart Dolphin if the right-click actions do not appear immediately.

## What you get

### 1UP

Right-click selected files and:

1UP -> Send Up One Directory
1UP -> Copy Location(s)

### c-frame

Right-click a video and copy a frame directly into the clipboard.

Requires ffmpeg, ffprobe, and xclip.

### n0drag

Pick up files without dragging, then later move, copy, or link them somewhere else.

n0drag -> Pick Up
n0drag -> Move Here
n0drag -> Copy Here
n0drag -> Link Here
n0drag -> Clear

### SendHere

Right-click selected files, choose a destination folder, and send the files there.

### SpacEr

Right-click a folder and inspect mounts, available space, biggest directories, and biggest files.

## Commands

Install:

./install.sh

Check status:

./status.sh

Uninstall:

./uninstall.sh

## Philosophy

The filesystem should feel fast in your hands.

Not everything needs to be a giant app. Sometimes the correct fix is a tiny script, a service menu, or a three-line patch.

Dolphin already has the foundation. Ergonomix is about making it feel obvious, immediate, and powerful.
