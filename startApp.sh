#!/usr/bin/env bash
if [ ! -d "/meteor/app" ]; then
    echo "creating app"
    cd /meteor
    meteor create app
    cd /meteor/app
    ls | grep -E -v '.meteor|package.json|.gitignore' | xargs rm -rf
    meteor remove blaze-html-templates
    meteor remove ecmascript
    meteor add angular
    meteor add driftyco:ionic
else
    echo "App already here"
    cd /meteor/app
    meteor
fi
