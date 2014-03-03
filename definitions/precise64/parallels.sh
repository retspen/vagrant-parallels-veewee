#!/usr/bin/env bash

if type apt-get >/dev/null 2>&1; then
    apt-get -y install build-essential dkms linux-headers-$(uname -r)
fi

PARALLELS_TOOLS_ISO=prl-tools-lin.iso
mkdir /tmp/virtualbox
mount -o loop $PARALLELS_TOOLS_ISO /tmp/virtualbox
/tmp/virtualbox/install --install-unattended-with-deps --progress
umount /tmp/virtualbox
rmdir /tmp/virtualbox
rm /home/vagrant/*.iso
