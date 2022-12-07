#!/bin/bash
mkdir -p Struktura/{Desktop,Documents,Downloads,Pictures,Videos}

for i in {1..5}
do
    sudo mkdir /folder$i
done
wait
for i in ena dva tri stiri pet
do
    sudo adduser user$i 
    wait
    sudo usermod -aG sudo user$i
done
wait
sudo apt-get update
wait
sudo apt-get upgrade
wait

sudo apt install nginx
wait
systemctl status nginx
wait

sudo apt install net-tools
wait

sudo apt install git
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
 curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
wait
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
wait
sudo apt-get update
wait
sudo snap install docker
