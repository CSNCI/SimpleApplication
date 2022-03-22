#!/usr/bin/env bash
sudo apt update && sudo apt install nodejs npm
#install pm2 which is a production process manager for Node.js with a bult-in loader balancer.
sudo npm install -g pm2
#stop any instance of our application running currently
pm2 stop simple_app
#change director into folder where application is downloaded
cd SimpleApplication/
#Install application dependencies
npm install
#Start the application with the process name simple_app using pm2
pm2 start npm ./bin/222 --name simple_app
