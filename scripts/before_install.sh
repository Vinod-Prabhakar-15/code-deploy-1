# scripts/before_install.sh
#!/bin/bash
# Update package list and install Apache on Ubuntu
apt update
apt install -y apache2

# Remove existing website files
rm -rf /var/www/html/*