#!/bin/bash
# Script to run tests and show coverage for Mr. Holger

echo "Running tests with coverage for Mr. Holger..."

# Force Karma to use the system Chrome we installed instead of Puppeteer
export CHROME_BIN=$(which google-chrome-stable || which google-chrome)
npx ng test --no-watch --coverage --browsers=ChromeHeadlessNoSandbox
echo "Test coverage report is successfully generated! Open coverage/index.html to view."