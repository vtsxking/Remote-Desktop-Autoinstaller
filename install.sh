#!/bin/bash

echo -e "$CYAN Updates... $COL_RESET"
apt update
apt upgrade
echo -e "$CYAN Google Remote Desktop Download... $COL_RESET"
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
apt install ./chrome-remote-desktop_current_amd64.deb
apt install ubuntu-mate-desktop
read -e -p "$CYAN  Enter Activation Code: $COL_RESET" Act_Code
DISPLAY= /opt/google/chrome-remote-desktop/start-host --code=\"$Act_Code\" --redirect-url=\"https://remotedesktop.google.com/_/oauthredirect\" --name=$(hostname)