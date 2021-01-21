# Autotop-noHID (for Arch-based distros)

This shell script simply invokes `powertop --autotune` at startup via systemd unit, but then disables power saving for plugged in HID devices (such as a USB mouse) to avoid having to re-plug the mouse to make it work again. It uses code published by [Ric Klaren on Askubuntu](https://askubuntu.com/a/1026527).


Usage on non-Arch-based distros is of course possible as well. The systemd unit calls the script from `/usr/share/autotop-nohid`.

&nbsp;

## Requirements

- An Arch-based distro (for building a package via PKGBUILD)
- _powertop_, _systemd_ (Arch packages)

&nbsp;

## Installation

Arch-based distros:    
`git clone https://github.com/JT8D-17/arch-autotop-nohid.git`    
`cd arch-autotop-nohid`    
`makepkg -sci`

Note:    
The `.install`script will enable the systemd unit automatically. If you do not want this, comment out the `install=` line in PKGBUILD.

&nbsp;

## Uninstallation

Arch-based distros:    
`pacman -Rsn arch-autotop-nohid`

The sysemd unit will be disabled automatically pre-removal.

&nbsp;

## License

[GNU Free Document License (GFDL)](https://www.gnu.org/licenses/fdl-1.3.html)