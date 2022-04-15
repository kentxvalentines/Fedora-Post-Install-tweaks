#!/bin/bash

# Create repo file

echo  "[sputnik-look-and-feel]
name=Look And Feel (Fedora_32)
type=rpm-md
baseurl=https://download.opensuse.org/repositories/home:/sputnik:/look-and-feel/Fedora_32/
gpgcheck=1
gpgkey=https://download.opensuse.org/repositories/home:/sputnik:/look-and-feel/Fedora_32/repodata/repomd.xml.key
enabled=1" | sudo tee -a /etc/yum.repos.d/sputnik-look-and-feel.repo

# Install Lightly
sudo dnf install Lightly
