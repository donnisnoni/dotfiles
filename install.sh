#!/usr/bin/env bash

# Install packages
sudo apt update -y
sudo apt install -y lxde hsetroot fish-shell nemo git

# Set fish as default shell
sudo chsh -s `which fish`

# Install VSCode
bash scripts/install_vscode.sh

# Install Vimix GTK theme
bash scripts/install_vimix_theme.sh
