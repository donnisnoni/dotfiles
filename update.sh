#!/usr/bin/env bash

# HOME config files
cp $HOME/.bash_profile              ./home
# cp $HOME/.bash_logout             ./home
cp $HOME/.gitconfig                 ./home
cp $HOME/.gitignore_global          ./home
# cp $HOME/.npmrc                     ./home
cp $HOME/.netrc                     ./home
cp $HOME/.config/fish -rf           ./home/.config/fish
cp $HOME/.config/fontconfig -rf     ./home/.config/fontconfig
