#! /bin/bash

# Update Linux Package
sudo yum update -y

# Install EFS utils
sudo yum install amazon-efs-utils -y

# Install Docker
sudo yum install docker -y
sudo systemctl start docker
# Install docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

# Install NFS utils
sudo yum install nfs-utils -y

# Install Ansible
sudo yum install amazon-linux-extras install ansible2 -y

# Install GIT
sudo yum install git -y

# Install Java
sudo yum install java -y

# Install Maven
sudo yum install maven -y

# Install AWS CLI
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
