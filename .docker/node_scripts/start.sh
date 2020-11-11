#!/bin/bash

if [ -z "$NODE_ENV" ]; then
    export NODE_ENV=development
fi

cd /var/www/tyler

pm2 start -x server.js --name="tyler" --no-daemon --watch
