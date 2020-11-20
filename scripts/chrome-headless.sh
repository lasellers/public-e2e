#!/bin/bash
# source scripts/chrome-headless.sh
# chrome tests with headless mode
# can be run anywhere
# This tests if the chrome browser is responding as expected in headless mode
#export CHROME_LOG_FILE="$HOME/logs/chrome.log"
export CHROME_LOG_FILE="./logs/chrome.log"

mkdir -p ./logs

# save screenshot to test google chrome
export URL="https://cnn.com"

google-chrome \
  --disable-dev-shm-usage \
  --disable-software-rasterizer \
  --mute-audio \
  --hide-scrollbars \
  --headless \
  --no-sandbox \
  --disable-setuid-sandbox \
  --screenshot $URL
mv screenshot.png logs/headless.png

google-chrome \
  --disable-dev-shm-usage \
  --disable-software-rasterizer \
  --mute-audio \
  --hide-scrollbars \
  --headless \
  --no-sandbox \
  --disable-setuid-sandbox \
  --window-size=1920x1080 \
  --screenshot $URL
mv screenshot.png logs/headless.hd.png

google-chrome \
  --headless \
  --no-sandbox \
  --dump-dom \
  $URL >index.html
mv index.html logs/index.html

google-chrome \
  --headless \
  --no-sandbox \
  --print-to-pdf \
  $URL
mv output.pdf logs/headless.pdf
