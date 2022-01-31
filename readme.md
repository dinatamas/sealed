Sealed Arch ISO
===============

This is my Secure Arch Linux ISO profile.

Features
--------
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

Threat Model
------------

__Temp todo:__

* `resolv.conf` required?
* Configure firefox!
  * https://blog.nightly.mozilla.org/2018/06/01/improving-dns-privacy-in-firefox/
* Are downloads possible?
  * If yes, `cage` should have no write access!
* Add to script: VPN password, WiFi config query!
* UDP protocol for ProtonVPN?

__Todo:__

* Use hardened kernel.
* Write all zeroes to RAM before shutdown.
* Do not use a swap partition.
* Block all hard drive access.
* Compare `releng` profiledef.sh, especially `airootfs_image`
* Review proper permissions and ownership.
* Should set up user passwords?

__Not risks:__

* The drive is not encrypted because it is not possible to write to the disk.
  Therefore it contains nothing apart from a default Arch environment.

Sources
-------

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
