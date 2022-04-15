#!/bin/bash
# Fix Firefox video playback low FPS issue

# Install OpenH264 binaries
sudo dnf config-manager --set-enabled fedora-cisco-openh264

# Install OpenH264 Firefox plugin
sudo dnf install gstreamer1-plugin-openh264 mozilla-openh264

# Install ffmpeg libs
sudo dnf install ffmpeg-libs
