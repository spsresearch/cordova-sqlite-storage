#!/bin/bash
echo UPDATE: Pulling latest changes from upstream
git remote add upstream https://github.com/xpbrew/cordova-sqlite-storage.git
git pull --force upstream dev
echo UPDATE: Updating SQLITE
$(dirname $0)/update-deps.sh
echo UPDATE: Fixing PGB compatibility in plugin.xml
$(dirname $0)/update-pluginxml.sh
echo UPDATE: Done if no errors above

