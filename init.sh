#!/bin/bash

# adding repo
sudo dnf copr enable lukenukem/asus-linux
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# installing nvidia
sudo dnf update -y
sudo dnf install kernel-devel -y
sudo dnf install akmod-nvidia xorg-x11-drv-nvidia-cuda xorg-x11-drv-nvidia-power -y

sudo systemctl enable nvidia-hibernate.service nvidia-suspend.service nvidia-resume.service

sudo sed -i s/nvidia-drm.modeset=1/nvidia-drm.modeset=0/g /etc/default/grub
sudo grub2-mkconfig -o /etc/grub2.cfg

#installing assud
sudo dnf install asusctl supergfxctl -y
sudo dnf update --refresh
sudo systemctl enable supergfxd.service
