#!/bin/bash

# Remove temporary files
echo "Removing temporary files..."
sudo rm -rf /tmp/*

# Clear package cache
echo "Clearing package cache..."
sudo apt-get clean

# Empty trash
echo "Emptying trash..."
rm -rf ~/.local/share/Trash/*  # For GNOME-based desktop environments
# Uncomment the line below for KDE-based desktop environments
# rm -rf ~/.local/share/Trash/files/*

echo "System cleanup completed."

