#!/bin/bash
# sudo sh scripts/install.sh

# chown -R 1000:1000 ~/npm
# chmod 777 * -R
# chmod 777 .* -R
sudo mkdir -p /home/ci/.npm
sudo chown -R 1000:1000 "/home/ci/.npm"

npm cache verify

npm uninstall gulp-cli -g
npm uninstall gulp -gy
npm install gulp-cli -g

npm install -g npm

mkdir -p logs
mkdir -p ~/logs

rm logs/* -R
#rm -rf node_modules/
npm install

npm run lint-fix

# Do not do npm update.
#
# https://github.com/GoogleChrome/puppeteer/releases

export CHROME_LOG_FILE="./logs/chrome.log"

./node_modules/.bin/protractor --version
google-chrome-stable -version
google-chrome -version
./node_modules/.bin/webdriver-manager version

./node_modules/.bin/webdriver-manager status

#./node_modules/.bin/webdriver-manager shutdown
kill $(ps -ef | grep webdriver | grep -v grep | awk '{ print $2 }')

# versions of chrome
# https://omahaproxy.appspot.com/

# https://www.npmjs.com/package/puppeteer#versions

# https://chromedriver.chromium.org/downloads
#./node_modules/.bin/webdriver-manager update

# the @latest
./node_modules/.bin/webdriver-manager update

# chrome 86.0.4240.193 puppeter ?
./node_modules/.bin/webdriver-manager update --versions.chrome=86.0.4240.193

# chrome 79 puppeter 2.0.0
#./node_modules/.bin/webdriver-manager update --versions.chrome=79.0.3945.117
#./node_modules/.bin/webdriver-manager update --versions.chrome=79.0.3945.88
#./node_modules/.bin/webdriver-manager update --versions.chrome=79.0.3945.36
#./node_modules/.bin/webdriver-manager update --versions.chrome=79.0.3945.16

# chrome 78 puppeter 1.20.0
#./node_modules/.bin/webdriver-manager update --versions.chrome=78.0.3904.105
#./node_modules/.bin/webdriver-manager update --versions.chrome=78.0.3904.108
#./node_modules/.bin/webdriver-manager update --versions.chrome=78.0.3904.70
# 78.0.3882.0 

# chrome 77 puppeter 1.19.0
#./node_modules/.bin/webdriver-manager update --versions.chrome=77.0.3865.40
#./node_modules/.bin/webdriver-manager update --versions.chrome=77.0.3865.10

# chrome 76 puppeter 1.17.0
#./node_modules/.bin/webdriver-manager update --versions.chrome=76.0.3809.126
#./node_modules/.bin/webdriver-manager update --versions.chrome=76.0.3809.68
#./node_modules/.bin/webdriver-manager update --versions.chrome=76.0.3809.25
#./node_modules/.bin/webdriver-manager update --versions.chrome=76.0.3809.12

# chrome 75 puppeter 1.15.0
#./node_modules/.bin/webdriver-manager update --versions.chrome=75.0.3770.140
#./node_modules/.bin/webdriver-manager update --versions.chrome=75.0.3770.90
#./node_modules/.bin/webdriver-manager update --versions.chrome=75.0.3770.8

# chrome 74 puppeter 1.13.0
#./node_modules/.bin/webdriver-manager update --versions.chrome=74.0.3729.6

# chrome 73 puppeter 1.12.2
#./node_modules/.bin/webdriver-manager update --versions.chrome=73.0.3683.68

# chrome 72 puppeter 1.11.0
#./node_modules/.bin/webdriver-manager update --versions.chrome=2.46

# chrome 71 puppeter 1.9.0
#./node_modules/.bin/webdriver-manager update --versions.chrome=2.46

# ie
#./node_modules/.bin/webdriver-manager update --ie32
#./node_modules/.bin/webdriver-manager update --ie

./node_modules/.bin/webdriver-manager start --verbose --detach

# ./node_modules/.bin/webdriver-manager start --detach --verbose
#./node_modules/.bin/webdriver-manager start \
#  --chrome_logs ./logs/chromelogs.log \
#  --logging ./logs/logging.log \
#  --verbose
#./node_modules/.bin/webdriver-manager start \
#  --detach \
#  --chrome_logs ./logs/chromelogs.log \
#  --logging ./logs/logging.log \
#  --verbose
