#!/bin/bash
echo -e "$CYAN Update & Upgrade... $COL_RESET"
apt update
apt upgrade

echo -e "$CYAN Createing User... $COL_RESET"
useradd $(hostname) -s /bin/bash -p '*'
adduser $(hostname) sudo

echo -e "$CYAN Switch User... $COL_RESET"
sudo su - $(hostname)


echo -e "$CYAN Google Remote Desktop Download... $COL_RESET"
sudo wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
sudo apt install ./chrome-remote-desktop_current_amd64.deb
sudo apt install ubuntu-mate-desktop

read -e -p "$CYAN  Enter Activation Code: $COL_RESET" Act_Code
echo DISPLAY= /opt/google/chrome-remote-desktop/start-host --code=\"$Act_Code\" --redirect-url=\"https://remotedesktop.google.com/_/oauthredirect\" --name=$(hostname)
DISPLAY= /opt/google/chrome-remote-desktop/start-host --code=\"$Act_Code\" --redirect-url=\"https://remotedesktop.google.com/_/oauthredirect\" --name=$(hostname)
