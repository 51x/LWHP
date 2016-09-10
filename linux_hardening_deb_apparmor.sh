#!/bin/sh
# http://wiki.apparmor.net/index.php/Main_Page
# http://wiki.apparmor.net/index.php/Distro_debian 
# This works the same way on Ubuntu.

apt-get update
apt-get install apparmor apparmor-profiles apparmor-utils apparmor-profiles-extra apparmor-easyprof -y

sed -i -e 's/GRUB_CMDLINE_LINUX_DEFAULT="/&security=apparmor /' /etc/default/grub
update-grub

echo "Please configure apparmor profile to make this hardening effective and remember the restart."
