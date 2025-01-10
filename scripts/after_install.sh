#!/bin/bash

# Set appropriate permissions for the web files
echo "Setting permissions for the web files..."
sudo chown -R apache:apache /var/www/html

# Optionally, you might want to restart the httpd service to pick up new changes (files, configuration, etc.)
echo "Restarting Apache service to apply changes..."
sudo systemctl restart httpd.service

# Check if httpd is running
if systemctl is-active --quiet httpd.service; then
    echo "Apache (httpd) is running successfully"
else
    echo "Apache (httpd) is not running"
    exit 1  # Exit with error code if Apache is not running
fi
