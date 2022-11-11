#!/usr/bin/env bash

iso_name="sealed"
iso_label="SEALED"
iso_publisher="dinatamaspal"
iso_application="Sealed Arch"
iso_version=""
install_dir="arch"
buildmodes=('iso')
bootmodes=('uefi-x64.systemd-boot.esp')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="erofs"
airootfs_image_tool_options=('-zlz4hc,12')
file_permissions=(
  ["/etc/openvpn/scripts/update-systemd-resolved"]="0:0:755"
  ["/etc/sgroup"]="0:0:400"
  ["/etc/shadow"]="0:0:400"
)
