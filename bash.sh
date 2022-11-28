#!/bin/bash

sudo mkdir /home/documents
sudo mkdir /home/downloads
sudo mkdir /home/pictures
sudo mkdir /home/videos

for i in {1 2 3 4 5}
do
    mkdir /folder$i
done
wait
for i in {1 2 3 4 5}
do
    sudo adduser User$i
    usermod -aG sudo User$i
done
wait
sudo apt-get update
wait
sudo apt-get upgrade
wait

sudo apt-get install nginx
wait
sudo apt-get install git
wait
sudo apt-get install net-tools
wait
sudo apt-get install ufw
wait

sudo apt-get update
wait

sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
wait

sudo mkdir -p /etc/apt/keyrings
wait

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
wait

echo \
"deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
wait
sudo apt-get update
wait
sudo apt-get install docker-compose-plugin
wait
