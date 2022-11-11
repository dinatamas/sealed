#!/usr/bin/env bash
#
# Prepare the USB medium for the live ISO.
#
if [ "${EUID}" -ne 0 ]; then
    echo 'Please run this script as root'
    exit 1
fi

mkarchiso -v -w /tmp/archiso-tmp /opt/repo/sealed/sealed/

parted '/dev/sdb' --script -- mklabel gpt
parted '/dev/sdb' --script -- mkpart primary ext4 0% 100%
mkfs.ext4 -F '/dev/sdb1'
dd bs='4M' if="out/sealed--x86_64.iso" \
    of='/dev/sdb' status='progress' oflag='sync'
