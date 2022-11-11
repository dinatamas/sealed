Sealed Arch ISO
===============

This is my secure Arch Linux ISO profile.

## Features

* `cage` user autologins and runs a security hardened Firefox as a kiosk.
  * The keyboard layout is standard Hungarian.
* `root` login is disabled.
* Only a very small list of packages are installed: see `packages.x86_64`.
* Only one boot option is available, no menu or timeout.
  * Boot is made silent (kernel messages and login prompt not shown).
* All networking is routed through ProtonVPN.
  * Autostarted using `systemd-networkd` and `systemd-resolved`.
  * Rename your `.ovpn` config to `.conf` and patch it.
  * Supply your OpenVPN / IKEv2 credentials in `auth.txt`.
* Place your wifi passphrase in `/var/lib/iwd/<SSID>.psk`.
* IPv6 is disabled to avoid leaks because ProtonVPN does not support it.
* `modprobe.d` contains configuration for a network card bug bypass.

## Tasks

* Improve the security and privacy of Firefox (settings, add-ons).
* Clean up RAM and swap similarly to Tails.
* Use a hardened kernel?
* How to handle hard drive access?

## Sources

* Documentation: `/usr/share/doc/archiso/`
* [ArchISO](https://wiki.archlinux.org/title/archiso)
* [Arch Linux Security](https://wiki.archlinux.org/title/security)
* [ProtonVPN on Linux](https://protonvpn.com/support/linux-vpn-setup/)
* [ProtonVPN on Arch](https://wiki.archlinux.org/title/ProtonVPN)
* [OpenVPN with Systemd](https://github.com/jonathanio/update-systemd-resolved)
* [Disable IPv6](https://wiki.archlinux.org/title/IPv6#Disable_functionality)
* [Silent Boot](https://wiki.archlinux.org/title/silent_boot)
* [Cage Wayland Kiosk](https://github.com/Hjdskes/cage/wiki/)
* [Firefox Hardening](https://github.com/arkenfox/user.js/wiki/)
