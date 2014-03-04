#!/usr/bin/env bash

apt-get -y remove build-essential make linux-headers*
apt-get -y autoremove
apt-get clean
rm -f /var/lib/dhcp3/*

rm /etc/udev/rules.d/70-persistent-net.rules
mkdir /etc/udev/rules.d/70-persistent-net.rules
rm -rf /dev/.udev/
rm /lib/udev/rules.d/75-persistent-net-generator.rules

dd if=/dev/zero of=/junk bs=1M
rm -f /junk

sync

rm /home/vagrant/*.sh
