#!/bin/bash

# Update the package index
echo "Updating package index"
sudo yum update -y

# Install httpd (Apache)
echo "Installing Apache (httpd)..."
sudo yum install -y httpd
