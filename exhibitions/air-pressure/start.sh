#!/bin/bash

# Navigate to the application directory
cd /home/mada/exhibitions/air-pressure

# Wait for any previous processes to clear
sleep 3

# Set the port and start the npm application in the background
export PORT=3001
npm start &

# Wait for a few seconds to ensure the app has started
sleep 5

# Check if Firefox is running and kill it
echo "Checking if Firefox is running and killing it..."
pkill firefox-bin

# Wait for a few seconds to ensure Firefox is fully closed
sleep 2

# Open Firefox in fullscreen mode (kiosk mode) and point to the app's URL
echo 'Opening Firefox in fullscreen mode' >&2
firefox --kiosk http://localhost:3001


