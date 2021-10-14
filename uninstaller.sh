#!/bin/bash

# Status Service
sudo systemctl status names.service

# Stop Service
sudo systemctl stop names.service

# Delete Service
sudo rm -d /lib/systemd/system/names.service

# Reload systemd
sudo systemctl daemon-reload

# Status Service
sudo systemctl status names.service

# Delete directory in user home folder
sudo rm -r /usr/bin/nameday