#!/bin/bash

./setup-git.sh

# Copy dotfiles
mv ~/.bashrc ~/.bashrc.bak
mv ~/.zshrc ~/.zshrc.bak
cp ./.bashrc ~/
cp ./.zshrc ~/

# Setup prompt
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc
