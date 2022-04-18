 #!/bin/bash

 # preparation
sudo dnf upgrade --refresh -y
sudo dnf install dnf-plugins-core -y

 # add repo
sudo dnf copr enable rmnscnce/kernel-lqx -y

# installation
sudo dnf install kernel-lqx -y
