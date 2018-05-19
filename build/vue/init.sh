#!/bin/bash

FILE="/var/www/vue/package.json"

if [ -f "$FILE" ]; then
    echo "Starting frontend"
    cd /var/www/vue
    yarn && yarn serve
else
    echo "/var/www/vue is Empty: vue-cli init"
    cd /var/www/web
    vue create -d -f vue
    mv vue/* ../vue/ && mv vue/.gitignore ../vue/.gitignore
    rm -rf /var/www/web /var/www/vue/vue
    cd ../vue && yarn && yarn serve
fi
