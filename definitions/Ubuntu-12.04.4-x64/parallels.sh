#!/usr/bin/env bash

apt-get -y install build-essential dkms linux-headers-$(uname -r)

PARALLELS_TOOLS_ISO=prl-tools-lin.iso
mkdir /tmp/parallels
mount -o loop $PARALLELS_TOOLS_ISO /tmp/parallels
/tmp/parallels/install --install-unattended-with-deps --progress
umount /tmp/parallels
rmdir /tmp/parallels
rm /home/vagrant/*.iso
