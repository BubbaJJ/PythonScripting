#!/bin/bash

# Create directory in user home folder
mkdir ~/nameday

# Copy files to the created folder
# Scripts
cp scripts/service_restart.sh ~/nameday/scripts/service_restart.sh
cp scripts/service_start.sh ~/nameday/scripts/service_start.sh
cp scripts/service_stop.sh ~/nameday/scripts/service_stop.sh

# Copy service file to systemd
sudo cp service/names.service /lib/systemd/system/names.service

# utilities
cp utilities/api.py ~/nameday/utilities/api.py
cp utilities/output.py ~/nameday/utilities/output.py
cp utilities/generate.py ~/nameday/utilities/generate.py
cp utilities/timechecker.py ~/nameday/utilities/timchecker.py

# Main files
cp names.py ~/nameday/names.py
cp installer.sh ~/nameday/installer.sh
cp namedays.txt ~/nameday/names.txt
cp uninstaller.sh ~/nameday/uninstaller.sh

# Make executable
chmod +x ~/nameday/scripts/service_restart.sh
chmod +x ~/nameday/scripts/service_start.sh
chmod +x ~/nameday/scripts/service_stop.sh

# Reload systemd
sudo systemctl daemon-reload

# Enables Service
sudo systemctl enable names.service

# Start Service
sudo systemctl start names.service

# Status Service
sudo systemctl status names.service