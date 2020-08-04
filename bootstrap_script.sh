#! /bin/bash
sudo yum upgrade -y
sudo yum install docker -y
sudo yum install git -y
sudo usermod -aG docker ec2-user
sudo service docker start
wget http://mirror.serverion.com/jenkins/war-stable/2.235.1/jenkins.war
