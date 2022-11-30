#!/bin/bash

for i in {1..5..1}
do
    sudo mkdir /folder$i
done
wait
for i in {1..5..1}
do
    sudo adduser user$i --force-badname
    wait
    usermod -aG sudo User$i
done
