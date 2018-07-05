#!/bin/bash

#ssh password auth on
sudo sed -i 's/^PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config

sudo /etc/init.d/ssh restart
sudo passwd ubuntu

sudo apt install xrdp xfce4 xfce4-goodies tightvncserver

echo xfce4-session> /home/ubuntu/.xsession
sudo cp /home/ubuntu/.xsession /etc/skel
sudo sed -i '0,/-1/s//ask-1/' /etc/xrdp/xrdp.ini

sudo service xrdp restart

