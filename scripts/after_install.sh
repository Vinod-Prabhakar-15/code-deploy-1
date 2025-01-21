#!/bin/bash

# Set appropriate permissions for the web files
echo "Setting permissions for the web files..."
sudo chown -R www-data:www-data /var/www/html
sudo chmod -R 755 /var/www/html

# Restart the Apache service to apply changes
echo "Restarting Apache service to apply changes..."
sudo systemctl restart apache2

# Check if Apache is running
if systemctl is-active --quiet apache2; then
    echo "Apache (apache2) is running successfully"
else
    echo "Apache (apache2) is not running"
    exit 1  # Exit with error code if Apache is not running
fi
