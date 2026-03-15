#!/bin/bash

sudo apt update
sudo apt install fontconfig openjdk-21-jre
echo   "--------------------------------------------------------JAVA------------------------------------------------------------------------------\n"
java -version
echo   "------------------------------------------------------------------------------------------------------------------------------------------\n"
sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2026.key
echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt update
sudo apt install jenkins -y 
echo   "------------------------------------------------------------------------------------------------------------------------------------------\n"
echo "jenkins"
jenkins --version
echo   "------------------------------------------------------------------------------------------------------------------------------------------\n"

curl -fsSL https://get.docker.com -o install-docker.sh
sudo sh install-docker.sh
echo   "------------------------------------------------------------------------------------------------------------------------------------------\n"
echo "DOCKER"
docker --version
echo   "------------------------------------------------------------------------------------------------------------------------------------------\n"




