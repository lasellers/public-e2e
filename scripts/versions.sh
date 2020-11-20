#!/bin/bash
# source scripts/versions.sh
# show versions for all relevant software
echo -e "\tnode";
node -v
echo -e "\tnodeJs";
nodejs --version
echo -e "\tnpm";
npm --version
echo -e "\tjava";
java --version
echo -e "\tProtractor";
./node_modules/.bin/protractor --version

echo -e "\tgoogle chrome unstable";
google-chrome-unstable -version
echo -e "\tgoogle chrome beta";
google-chrome-beta -version
echo -e "\tgoogle chrome stable";
google-chrome-stable -version
echo -e "\tgoogle chrome";
google-chrome -version
echo -e "\tgoogle chromium";
./node_modules/puppeteer/.local-chromium/linux-686378/chrome-linux/chrome --version

echo -e "\tgulp";
./node_modules/.bin/gulp --version
echo -e "\tWebdriver manager";
./node_modules/.bin/webdriver-manager version
./node_modules/.bin/webdriver-manager status
echo -e "\tzdpyinfo";
xdpyinfo -version
echo -e "\txvfb display 0";
xdpyinfo -display :0 >/dev/null 2>&1 && echo "In use" || echo "Free"
