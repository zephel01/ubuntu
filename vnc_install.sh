#!/bin/bash

sudo apt-get install ubuntu-desktop
sudo apt-get install gnome-panel gnome-settings-daemon metacity nautilus gnome-terminal

sudo apt-get install vnc4server

vncserver

cp ~/ubuntu/xstartup ~/.vnc/xstartup

sudo cp ~/ubuntu/vncserver@.service /etc/systemd/system
sudo systemctl daemon-reload

sudo systemctl enable vncserver@1.service
sudo systemctl list-unit-files | grep vnc
