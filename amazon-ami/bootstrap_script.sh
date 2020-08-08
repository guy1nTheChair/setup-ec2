#! /bin/bash
# sudo yum upgrade -y
# sudo yum install docker -y
# sudo yum install git -y
# sudo usermod -aG docker ec2-user
# sudo service docker start
# sudo docker run -d --name jenkins -p 8080:8080 -p 50000:50000 jenkins/jenkins:2.235.3-lts-alpine
#sudo docker run -d --name sonarqube -p 9000:9000 sonarqube:community
#sudo wget http://mirror.serverion.com/jenkins/war-stable/2.235.1/jenkins.war

sudo apt-get update -y
sudo apt-get install docker.io -y
sudo apt-get install git -y
sudo apt-get install maven
sudo usermod -aG docker ubuntu
sudo service docker start
sudo docker run -d --name jenkins -p 8080:8080 -p 50000:50000 jenkins/jenkins:2.235.3-lts-alpine
sudo docker run -d --name sonarqube -p 9000:9000 sonarqube:community
#sudo wget http://mirror.serverion.com/jenkins/war-stable/2.235.1/jenkins.war
