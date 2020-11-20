#!/bin/bash
# source scripts/chrome-headed.sh
# chrome tests with headed mode
# can be run anywhere
# export CHROME_LOG_FILE="~/logs/chrome.log"
# export CHROME_LOG_FILE="$HOME/logs/chrome.log"
export CHROME_LOG_FILE="./logs/chrome.log"

mkdir -p ./logs

# save screenshot to test google chrome
export URL="https://cnn.com"

google-chrome \
  --no-sandbox \
  --disable-setuid-sandbox \
  --disable-dev-shm-usage \
  --disable-software-rasterizer \
  --mute-audio \
  --hide-scrollbars \
  --screenshot $URL
mv screenshot.png ./logs/headed.png

google-chrome \
  --no-sandbox \
  --disable-setuid-sandbox \
  --disable-dev-shm-usage \
  --disable-software-rasterizer \
  --mute-audio \
  --hide-scrollbars \
  --screenshot $URL \
  --window-size=1920x1080 \
  $URL
mv screenshot.png ./logs/headed.hd.png
