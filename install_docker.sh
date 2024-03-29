#!/bin/bash

# Remove existing Docker-related packages if any
echo "Removing existing Docker-related packages..."
for pkg in docker.io docker-doc docker-compose podman-docker containerd runc; do
   sudo apt-get remove $pkg;
done
            

# Update package list
echo "Updating package list..."
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg
   
# Install prerequisites
echo "Installing prerequisites..."
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg

# Create directory for apt keyrings
echo "Creating directory for apt keyrings..."
sudo install -m 0755 -d /etc/apt/keyrings

# Download Docker's official GPG key and store it in the keyring directory
echo "Downloading Docker's official GPG key..."
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

# Set appropriate permissions for the GPG key file
echo "Setting permissions for the GPG key file..."
sudo chmod a+r /etc/apt/keyrings/docker.gpg

# Set Up the docker Repository 
echo \
"deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
"$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Install Docker CE, Docker CLI, Containerd, Docker Buildx Plugin, Docker Compose Plugin
echo "Installing Docker CE, Docker CLI, Containerd, Docker Buildx Plugin, Docker Compose Plugin..."
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Restart Docker service
echo "Restarting Docker service..."
sudo systemctl restart docker

echo "Docker installation and setup completed successfully!"
