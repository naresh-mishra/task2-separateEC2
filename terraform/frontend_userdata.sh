#!/bin/bash

apt update -y
apt install -y nodejs npm git

cd /home/ubuntu

git clone https://github.com/naresh-mishra/task2-separateEC2.git

cd task2-separateEC2/frontend

npm install

nohup node server.js > output.log 2>&1 &