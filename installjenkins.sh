#!/bin/bash

# Update system packages
sudo dnf update -y

# Install Java 17 (Jenkins requires Java to run)
sudo dnf install java-17-amazon-corretto -y

# Verify Java installation
java -version

# Add Jenkins repository
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo

# Import Jenkins key
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

# Install Jenkins
sudo dnf install jenkins -y

# Enable and start Jenkins service
sudo systemctl enable jenkins
sudo systemctl start jenkins