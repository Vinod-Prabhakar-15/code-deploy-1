# scripts/application_start.sh
#!/bin/bash

# Start Apache server
systemctl start apache2
systemctl enable apache2