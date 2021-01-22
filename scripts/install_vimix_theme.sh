#!/usr/bin/env bash

sudo apt update -y
sudo apt install -y gtk2-engines-murrine gtk2-engines-pixbuf

git clone https://github.com/vinceliuice/vimix-gtk-themes.git
cd ./vimix-gtk-themes && sudo ./install.sh
