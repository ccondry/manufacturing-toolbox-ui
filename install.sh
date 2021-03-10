#!/bin/sh
echo "running yarn"
yarn
if [ $? -eq 0 ]; then
  echo "running yarn build..."
  yarn build
  while [ $? != 0 ]
  do
    echo "failed to build manufacturing-toolbox-ui website files. trying again..."
    yarn build
  done
  echo "yarn build successful. copying dist files to www folder..."
  mkdir -p /var/www/toolbox/manufacturing
  cp -rf dist/* /var/www/toolbox/manufacturing/
  if [ $? -eq 0 ]; then
    echo "successfully installed manufacturing-toolbox-ui website files"
  else
    echo "failed to install manufacturing-toolbox-ui website files"
  fi
else
  echo "yarn failed"
fi
