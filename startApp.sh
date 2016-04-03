#!/usr/bin/env bash
if [ ! -d "/meteor/app" ]; then
    echo "creating app"
    cd /meteor
    meteor create app
else
    echo "App already here"
    cd /meteor/app
    meteor npm install
    meteor
fi
