#!/bin/bash
# Script to generate clickable Desktop Icons for Mr. Holger in Ubuntu

echo "Setting up Desktop Shortcuts..."

# Find the Desktop directory dynamically
DESKTOP_DIR=$(xdg-user-dir DESKTOP 2>/dev/null || echo "$HOME/Desktop")
CURRENT_DIR=$(pwd)

# 1. Start App Shortcut
cat <<EOF > "$DESKTOP_DIR/Start_AWD_App.desktop"
[Desktop Entry]
Version=1.0
Name=Start AWD App
Comment=Starts the Backend, Frontend, and opens Firefox
Exec=bash -c "cd '$CURRENT_DIR' && ./start-demo.sh"
Icon=utilities-terminal
Terminal=true
Type=Application
Categories=Development;
EOF

# 2. Run Tests Shortcut
cat <<EOF > "$DESKTOP_DIR/Run_AWD_Tests.desktop"
[Desktop Entry]
Version=1.0
Name=Run AWD Tests
Comment=Runs Karma/Jasmine tests and shows coverage
Exec=bash -c "cd '$CURRENT_DIR' && ./run-tests.sh; echo ''; read -p 'Press Enter to close...' -n1 -s"
Icon=utilities-terminal
Terminal=true
Type=Application
Categories=Development;
EOF

# Make the shortcuts executable
chmod +x "$DESKTOP_DIR/Start_AWD_App.desktop"
chmod +x "$DESKTOP_DIR/Run_AWD_Tests.desktop"

echo "✅ Desktop shortcuts created successfully!"
echo "⚠️ NOTE: Depending on your Ubuntu version, you might need to right-click the icons on your Desktop and select 'Allow Launching' the first time you use them."