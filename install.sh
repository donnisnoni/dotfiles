#!/usr/bin/sh

# Install packages
sudo apt-get install -y lxde hsetroot fish-shell

# Set fish as default shell
chsh -s `which fish`
