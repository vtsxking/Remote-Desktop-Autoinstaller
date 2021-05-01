#!/bin/bash


echo -e "$CYAN Update & Upgrade... $COL_RESET"
apt update
apt upgrade

echo -e "$CYAN Createing User... $COL_RESET"
useradd $(hostname) -s /bin/bash -p '*'
adduser $(hostname) sudo

su - $(hostname)