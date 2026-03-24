#!/bin/bash
# Script to run tests and show coverage for Mr. Holger

echo "Running tests with coverage for Mr. Holger..."
ng test --no-watch --code-coverage
echo "Test coverage report is successfully generated! Open coverage/index.html to view."