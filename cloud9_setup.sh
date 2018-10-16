#!/bin/bash

sudo apt-get update
sudo apt-get -y install nodejs

sudo mkdir -p /home/ec2-user/environment
sudo chown -R ubuntu.ubuntu /home/ec2-user
