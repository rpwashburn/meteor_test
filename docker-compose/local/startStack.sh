#!/usr/bin/env bash
if [ -d "../../app" ]; then
    sudo chown -R $USER:$USER ../../app
fi
yes | sudo docker-compose rm meteorapp
yes | sudo docker-compose rm mongo
sudo docker-compose up