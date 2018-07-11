#!/bin/bash

# delete us-east1.ec2.
sudo sed -i 's/us-east-1\.ec2\.//g' /etc/apt/sources.list

# 開発環境インストール
sudo apt-get update
sudo apt upgrade
sudo apt-get install git gcc make openssl libssl-dev libbz2-dev libreadline-dev libsqlite3-dev

# pyenv install

sudo /usr/bin/git clone https://github.com/yyuu/pyenv.git /usr/bin/.pyenv

cd /usr/bin/.pyenv
sudo mkdir shims
sudo mkdir versions

sudo chown -R ubuntu:ubuntu /usr/bin/.pyenv

cat ~/ubuntu/bashrc_add >> ~/.bashrc

source ~/.bashrc

pyenv install 3.6.5
pyenv global 3.6.5

pip install --upgrade pip

pip install pybitflyer
pip install pandas --no-build-isolation
pip install colorconsole
pip install websocket-client
pip install hjson
pip install quandl
pip install tornado
pip install pygame

exec bash

