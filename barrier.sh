#!/bin/bash

# barrier install
sudo dnf install barrier -y

# generate SSL
cd ~/local/share/barrier/
mkdir SSL && cd SSL
openssl req -x509 -nodes -days 365 -subj /CN=Barrier -newkey rsa:4096 -keyout Barrier.pem -out Barrier.pem
