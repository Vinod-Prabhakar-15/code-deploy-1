#!/bin/bash

# Start the httpd service (Amazon Linux 2 uses httpd, not apache2)
echo "Starting httpd service..."
sudo systemctl start httpd.service

# Enable httpd to start on boot
echo "Enabling httpd service to start on boot..."
sudo systemctl enable httpd.service

# Check if httpd is running
if systemctl is-active --quiet httpd.service; then
    echo "Apache (httpd) started successfully"
else
    echo "Failed to start Apache (httpd)"
    exit 1  # Exit with an error code if Apache failed to start
fi
