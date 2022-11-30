#!/bin/bash

for i in {1..5..1}
do
    sudo mkdir /folder$i
done
wait
for i in {1..5..1}
do
    sudo adduser User$i
    wait
    usermod -aG sudo User$i
done
wait
sudo apt-get update
wait
sudo apt-get upgrade
wait
