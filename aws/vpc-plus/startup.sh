#!/bin/bash

# Upgrade OS and other packages
sudo apt update && sudo apt upgrade -y

# Install Docker using the official installation method
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install -y docker-ce

# Start Docker and add the ubuntu user to the Docker group
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker ubuntu

# Run an Nginx container
docker run -p 8080:80 -d nginx
