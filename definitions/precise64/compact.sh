#!/usr/bin/env bash

if type apt-get >/dev/null 2>&1; then
    apt-get -y remove build-essential make linux-headers*
    apt-get -y autoremove
    apt-get clean
    rm -f /var/lib/dhcp3/*
fi

rm /etc/udev/rules.d/70-persistent-net.rules
mkdir /etc/udev/rules.d/70-persistent-net.rules
rm -rf /dev/.udev/
rm /lib/udev/rules.d/75-persistent-net-generator.rules

dd if=/dev/zero of=/junk bs=1M
rm -f /junk

sync
