#!/bin/bash

./setup-git.sh

mv ~/.bashrc ~/.bashrc.bak
mv ~/.zshrc ~/.zshrc.bak
cp ./.bashrc ~/
cp ./.zshrc ~/
