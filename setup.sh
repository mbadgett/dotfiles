#!/bin/bash

./setup-git.sh

# Copy dotfiles
mv ~/.bashrc ~/.bashrc.bak
mv ~/.zshrc ~/.zshrc.bak
cp ./.bashrc ~/
cp ./.zshrc ~/
mkdir -p ~/.copilot
cp ./.copilot/copilot-instructions.md ~/.copilot/copilot-instructions.md

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.powerlevel10k
cp ./.p10k.zsh ~/.p10k.zsh
