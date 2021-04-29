#!/bin/bash

read -e -p "Enter Activation Code: " Act_Code
apt update
apt upgrade
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
apt install ./chrome-remote-desktop_current_amd64.deb
apt install ubuntu-mate-desktop
DISPLAY= /opt/google/chrome-remote-desktop/start-host --code="$Act_Code" --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=$(hostname)