#!/bin/bash
FILE="/var/www/express/package.json"

if [ -f "$FILE" ]; then
    echo "Starting server"
    cd /var/www/express
    npm install
    yarn && yarn start
else
    echo "/var/www/express is Empty: express-cli init"
    cd /var/www
    express ./express
    cd express
    yarn && yarn start
fi
