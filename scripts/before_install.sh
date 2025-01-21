#!/bin/bash

# Detect OS type and choose appropriate package manager
if [ -x "$(command -v yum)" ]; then
    echo "Detected Amazon Linux/CentOS - using yum"
    sudo yum update -y
    sudo yum install -y httpd
elif [ -x "$(command -v apt)" ]; then
    echo "Detected Ubuntu/Debian - using apt"
    sudo apt update -y
    sudo apt install -y apache2
else
    echo "Unsupported OS"
    exit 1
fi
