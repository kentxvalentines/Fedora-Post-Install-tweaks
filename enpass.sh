 #!/bin/bash

 #Add Enpass yum repository
 cd /etc/yum.repos.d/
 sudo wget https://yum.enpass.io/enpass-yum.repo

 # Install Enpass
 sudo yum install enpass
