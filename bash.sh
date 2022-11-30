#!/bin/bash

for i in {1..5..1}
do
    sudo mkdir /folder$i
done
wait
for i in ena dva tri štiri pet
do
    sudo adduser user$i 
    wait
    usermod -aG sudo user$i
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
