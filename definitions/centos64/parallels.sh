#!/usr/bin/env bash

yum -y install gcc kernel-devel-$(uname -r)

PARALLELS_TOOLS_ISO=prl-tools-lin.iso
mkdir /tmp/virtualbox
mount -o loop $PARALLELS_TOOLS_ISO /tmp/virtualbox
/tmp/virtualbox/install --install-unattended-with-deps --progress
umount /tmp/virtualbox
rmdir /tmp/virtualbox
rm /home/vagrant/*.iso
