#!/bin/bash

./setup-git.sh

# Copy dotfiles
mv ~/.bashrc ~/.bashrc.bak
mv ~/.zshrc ~/.zshrc.bak
cp ./.bashrc ~/
cp ./.zshrc ~/
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
