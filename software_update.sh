#!/bin/bash

# Command to Update package lists
sudo apt update

# Command to Upgrade the packages that can be upgraded
sudo apt upgrade -y

# Remove unnecessary packages and dependencies for good memory management
sudo apt autoremove -y

# Clean package cache
sudo apt clean -y

# Display system update status on terminal to know if the update and upgrade is successfull
echo "System updates and upgrades completed successfully."
