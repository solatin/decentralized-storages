#!/bin/sh
sudo apt-get update
sudo apt-get upgrade
sudo apt install docker.io
systemctl start docker
systemctl enable docker
docker --version
sudo apt-get install curl
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
sudo curl -o docker-compose.yaml https://raw.githubusercontent.com/solatin/decentralized-storages/server-1/docker-compose.yaml
sudo docker-compose up be
