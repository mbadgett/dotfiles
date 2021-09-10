#!/bin/bash

git config --global user.name "Joshua French"
git config --global user.email "just-joshing@github.com"
git config --global github.user just-joshing
git config --global core.editor "code --wait"
git config --global push.default current

./setup-git-aliases.sh
