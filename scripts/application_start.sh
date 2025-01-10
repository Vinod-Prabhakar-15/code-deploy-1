#!/bin/bash

# Start apache2 service
echo "Starting apache2 service"
sudo systemctl start apache2.service

# Enable apache2 service to start on boot
echo "Enabling apache2 service to start on boot"
sudo systemctl enable apache2.service

# Check if apache2 is running
if systemctl is-active --quiet apache2.service; then
    echo "Apache started successfully"
else
    echo "Failed to start Apache"
    exit 1  # Exit with an error code if Apache failed to start
fi
