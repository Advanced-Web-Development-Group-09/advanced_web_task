#!/bin/bash
# Script to configure the Angular app to start automatically when the VM boots

echo "Setting up auto-start service for the frontend..."

SERVICE_FILE="/etc/systemd/system/awd-frontend.service"
CURRENT_DIR=$(pwd)
USER=$(whoami)

cat <<EOL | sudo tee $SERVICE_FILE > /dev/null
[Unit]
Description=AWD Angular Frontend
After=network.target

[Service]
Type=simple
User=$USER
WorkingDirectory=$CURRENT_DIR
ExecStart=/usr/bin/env bash $CURRENT_DIR/start-app.sh
Restart=on-failure

[Install]
WantedBy=multi-user.target
EOL

sudo systemctl daemon-reload
sudo systemctl enable awd-frontend.service
sudo systemctl start awd-frontend.service

echo "Auto-start enabled! The app is now running in the background and will start automatically whenever the VM boots."