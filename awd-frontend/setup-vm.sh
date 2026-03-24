#!/bin/bash
# Setup script for Mr. Holger to initialize the Ubuntu VM environment

echo "Setting up Ubuntu VM for the Advanced Web Task..."

# Update and install base dependencies
sudo apt-get update && sudo apt-get install -y curl git wget

# Install Node.js (v20 LTS is stable for modern Angular)
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install Google Chrome (Required for Angular Karma tests to run in headless mode)
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt-get install -y ./google-chrome-stable_current_amd64.deb

# Install Angular CLI globally and project dependencies locally
sudo npm install -g @angular/cli
npm install

echo "Setup complete! Dear Mr. Holger, you can now run the app or tests."