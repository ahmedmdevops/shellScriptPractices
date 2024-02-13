#!/bin/bash

# Iinstalling dependencies
echo "#############################"
echo "Installing packages."
sudo apt-get install wget unzip apache2 -y
echo

# Start & enable Services
echo "#############################"
echo "Start & enable Services"
echo "#############################"
sudo systemctl start apache2
sudo systemctl enable apache2
echo

# Creating Temp Directory
echo "#############################"
echo "Starting Artifacts Deployment"
echo "#############################"
mkdir -p ~/devOpsSpace/scripts/webfiles
cd scripts/webfiles/
echo

wget https://www.tooplate.com/zip-templates/2137_barista_cafe.zip
unzip 2137_barista_cafe.zip
sudo cp -r 2137_barista_cafe/* /var/www/html
echo

# Bounce Service
echo "###############################"
echo "Restarting HTTPD Service"
echo "###############################"
sudo systemctl restart apache2
echo

# Clean Up
echo "##############################"
echo "Removing Temporary Files"
echo "##############################"
rm -rf /scripts/webfiles
echo

sudo systemctl status apache2

