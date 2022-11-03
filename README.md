# playerctl-shift

## Overview

`playerctl-shift` is a convenience script to switch to the next media player which `playerctl` controls.

## Installation

The script can be installed with the included Makefile:

```bash
sudo make install
```

If you use an Arch-based system, you can also install `playerctl-shift` from the
[AUR](https://aur.archlinux.org/packages/playerctl-shift):

```bash
yay -S playerctl-shift
```

## Usage

Run `playerctl-shift` without any arguments to shift control and playback to the next player. Pass the argument
`unshift` to switch back to the previous player:

```bash
playerctl-shift unshift
```
