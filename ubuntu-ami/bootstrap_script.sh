#! /bin/bash
sudo apt-get update -y
sudo apt-get install docker.io -y
sudo apt-get install git -y
sudo apt-get install maven
sudo usermod -aG docker ubuntu
sudo service docker start
sudo docker run -d --name jenkins -p 8080:8080 -p 50000:50000 jenkins/jenkins:2.235.3-lts-alpine

#sudo docker run -d --name sonarqube -p 9000:9000 sonarqube:community
