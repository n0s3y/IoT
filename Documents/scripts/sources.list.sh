#!/bin/bash
sudo rm /etc/apt/sources.list || exit 
sudo touch /etc/apt/sources.list || exit 
sudo tee -a /etc/apt/sources.list<<EOF
deb http://http.kali.org/kali kali-last-snapshot main contrib non-free
EOF
apt-get update || exit 
