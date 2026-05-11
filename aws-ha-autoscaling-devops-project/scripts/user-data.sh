#!/bin/bash
# User Data script to bootstrap EC2 instance for AWS HA project

# Update system and install dependencies
yum update -y
yum install -y yum-utils
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Install Docker
amazon-linux-extras install docker -y
systemctl start docker
systemctl enable docker

# Give ec2-user docker permissions
usermod -aG docker ec2-user

# Application Deployment
# In a real scenario, we would pull from Docker Hub.
# For this portfolio project, we will create a simple nginx index file directly
# or pull a generic nginx image to demonstrate functionality.

docker run -d -p 80:80 --name portfolio-app nginx:alpine
