#!/bin/bash

# Function to install required packages
install_packages() {
    echo "Installing required packages..."
    sudo apt-get update
    sudo apt-get install -y apache2 wget unzip
}

# Function to start and enable Apache server
start_apache() {
    echo "Starting Apache server..."
    sudo systemctl start apache2
    sudo systemctl enable apache2
}

# Function to create directory and download artifacts
get_artifacts() {
    echo "Creating directory and getting artifacts..."
    sudo mkdir -p /var/www/html/barista_cafe
    cd /var/www/html/barista_cafe || exit
    sudo wget -O artifacts.zip https://www.tooplate.com/zip-templates/2137_barista_cafe.zip
    sudo unzip artifacts.zip
    sudo rm artifacts.zip
    sudo chown -R www-data:www-data /var/www/html/barista_cafe
}

# Function to restart Apache server
restart_apache() {
    echo "Restarting Apache server..."
    sudo systemctl restart apache2
}

# Main function
main() {
    install_packages
    start_apache
    get_artifacts
    restart_apache
    echo "Apache server installation, artifacts retrieval, and configuration completed."
}

# Run the main function
main

