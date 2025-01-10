#!/bin/bash

# Set appropriate permissions for the website files
echo "Setting permissions for website files"
sudo chown -R www-data:www-data /var/www/html

# Ensure Apache (apache2) service is installed (Ubuntu)
if ! command -v apache2 &> /dev/null
then
    echo "apache2 not found, installing Apache..."
    sudo apt-get install -y apache2
fi
