#!/bin/bash

for i in {1..5..1}
do
    sudo mkdir /folder$i
done
wait
for i in {ena dva tri štiri pet}
do
    sudo adduser user$i 
    wait
    usermod -aG sudo User$i
done
