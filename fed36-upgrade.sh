#!/bin/bash

# System refresh
sudo dnf upgrade --refresh

# Do upgrade
sudo dnf install dnf-plugin-system-upgrade -y
sudo dnf system-upgrade download --releasever=36

# upgrade reboot
sudo dnf system-upgrade reboot
