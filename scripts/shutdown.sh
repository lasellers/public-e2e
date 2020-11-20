#!/bin/bash
# see firstboot.sh
# ./node_modules/.bin/webdriver-manager shutdown
kill $(ps -ef | grep webdriver | grep -v grep | awk '{ print $2 }')
