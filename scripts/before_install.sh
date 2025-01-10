#!/bin/bash

# Update package index
echo "Updating package index"
sudo apt-get update -y

# Install any necessary dependencies (e.g., if you're using a backend server or other services)
echo "Installing necessary packages"
sudo apt-get install -y curl git
