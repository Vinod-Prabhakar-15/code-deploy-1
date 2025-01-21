#!/bin/bash

# Start the Apache (apache2) service
echo "Starting apache2 service..."
sudo systemctl start apache2

# Enable Apache (apache2) to start on boot
echo "Enabling apache2 service to start on boot..."
sudo systemctl enable apache2

# Check if apache2 is running
if systemctl is-active --quiet apache2; then
    echo "Apache (apache2) started successfully"
else
    echo "Failed to start Apache (apache2)"
    exit 1  # Exit with an error code if Apache failed to start
fi
