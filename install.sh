#!/usr/bin/sh

# Install packages
sudo apt update -y
sudo apt install -y lxde hsetroot fish-shell

# Set fish as default shell
sudo chsh -s `which fish`
