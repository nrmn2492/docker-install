#!/bin/sh
echo 'Docker telepítése'
sleep 2
apt install apt-transport-https ca-certificates curl software-properties-common gnupg2 -y
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
sudo apt update 
apt install docker-ce -y
echo 'Docker-compose telepítése'
sleep 2
apt-get remove composer
curl -L "https://github.com/docker/compose/releases/download/1.23.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
docker-compose --version
echo 'KÉSZ'
sleep 2
