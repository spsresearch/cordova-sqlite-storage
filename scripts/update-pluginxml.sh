#!/bin/bash
# Use inline dependencies instead of relying on npm install
sed -i 'node_modules/deps/g' plugin.xml
# Remove pre-install hook not supported by PhoneGap Build
sed -i '/hook type="before_plugin_install"/d' plugin.xml

