#!/usr/bin/env bash

if type yum >/dev/null 2>&1; then
    yum -y remove kernel-devel glibc-devel cpp gcc
    yum clean all
fi

rm /etc/udev/rules.d/70-persistent-net.rules
mkdir /etc/udev/rules.d/70-persistent-net.rules
rm -rf /dev/.udev/
rm /lib/udev/rules.d/75-persistent-net-generator.rules

dd if=/dev/zero of=/junk bs=1M
rm -f /junk

sync
