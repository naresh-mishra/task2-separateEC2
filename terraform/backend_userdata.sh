#!/bin/bash

apt update -y
apt install -y python3-pip git

cd /home/ubuntu

git clone https://github.com/naresh-mishra/task2-separateEC2.git

cd task2-separateEC2/backend

pip3 install -r requirements.txt

nohup python3 app.py > output.log 2>&1 &