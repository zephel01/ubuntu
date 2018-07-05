#!/bin/bash

# 開発環境インストール
sudo apt-get install git gcc make openssl libssl-dev libbz2-dev libreadline-dev libsqlite3-dev

# pyenv install

sudo /usr/bin/git clone https://github.com/yyuu/pyenv.git /usr/bin/.pyenv

cd /usr/bin/.pyenv
sudo mkdir shims
sudo mkdir versions

sudo chown -R ec2-user:ec2-user /usr/bin/.pyenv

cd ~
sed -i -e 's/alias python/#alias python/g' ~/.bashrc

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

