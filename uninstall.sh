#!/bin/sh
echo "removing manufacturing-toolbox-ui website files..."
rm -rf /var/www/toolbox/manufacturing/*
if [ $? -eq 0 ]; then
  echo "successfully removed manufacturing-toolbox-ui website files."
else
  echo "failed to remove manufacturing-toolbox-ui website files."
fi
