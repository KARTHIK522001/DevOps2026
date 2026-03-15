#!/bin/bash

sudo apt update
sudo apt install fontconfig openjdk-21-jre
echo  -e "--------------------------------------------------------JAVA------------------------------------------------------------------------------\n"
java -version
echo  -e "------------------------------------------------------------------------------------------------------------------------------------------\n"
sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2026.key
echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt update
sudo apt install jenkins -y 
echo  -e "------------------------------------------------------------------------------------------------------------------------------------------\n"
jenkins --version
echo  -e "------------------------------------------------------------------------------------------------------------------------------------------\n"

curl -fsSL https://get.docker.com -o install-docker.sh
sudo sh install-docker.sh
echo  -e "------------------------------------------------------------------------------------------------------------------------------------------\n"
Docker --version
echo  -e "------------------------------------------------------------------------------------------------------------------------------------------\n"




