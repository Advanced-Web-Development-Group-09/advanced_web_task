#!/bin/bash
# Setup script for Mr. Holger to initialize the Ubuntu VM environment

echo "Setting up Ubuntu VM for the Advanced Web Task..."

# Update and install base dependencies (Including Python 3)
sudo apt-get update && sudo apt-get install -y curl git wget python3 python3-pip python3-venv

echo "--- [1/2] Setting up Angular Frontend ---"
# Install Node.js (v20 LTS is stable for modern Angular)
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install Google Chrome (Required for Angular Karma tests to run in headless mode)
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt-get install -y ./google-chrome-stable_current_amd64.deb

# Install Angular CLI globally and project dependencies locally
sudo npm install -g @angular/cli
npm install

echo "--- [2/2] Setting up Python Backend ---"
FRONTEND_DIR=$(pwd)
cd ../awd-backend 2>/dev/null || cd ../backend 2>/dev/null || cd ../advanced_web_task_backend 2>/dev/null || echo "⚠️ Warning: Backend folder not found! Please check folder structure."

if [ -f "requirements.txt" ]; then
    echo "Found backend, installing Python requirements..."
    python3 -m venv .venv
    source .venv/bin/activate
    pip install -r requirements.txt
    deactivate
else
    echo "⚠️ requirements.txt not found! Skipping backend Python setup."
fi

cd "$FRONTEND_DIR" || exit

echo "Setup complete! Dear Mr. Holger, you can now run the app or tests."