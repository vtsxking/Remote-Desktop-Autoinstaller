#!/bin/bash


echo -e "$CYAN Update & Upgrade... $COL_RESET"
apt update
apt upgrade

echo -e "$CYAN Createing User... $COL_RESET"
useradd $(hostname) -s /bin/bash -p '*'
adduser $(hostname) sudo

echo -e "$CYAN Copying Remote Installer... $COL_RESET"
cp remote-indtall.sh /tmp/remote-desktop

echo -e "$CYAN Switch User... $COL_RESET"
/bin/su -s /bin/bash -c '/tmp/remote-desktop/remote-install.sh' $(hostname)