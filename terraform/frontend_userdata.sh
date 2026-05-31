#!/bin/bash

set -e

apt update -y
apt install -y git curl

# Install Node.js 20 (IMPORTANT FIX)
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
apt install -y nodejs

# Verify
node -v
npm -v

cd /home/ubuntu

git clone https://github.com/naresh-mishra/task2-separateEC2.git || true

cd task2-separateEC2/frontend

npm install

# Run in background
nohup node server.js > output.log 2>&1 &