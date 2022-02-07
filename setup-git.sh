#!/bin/bash

git config --global user.name "Michael Badgett"
git config --global user.email "mbadgett@github.com"
git config --global github.user mbadgett
git config --global core.editor "code --wait"
git config --global push.default current

./setup-git-aliases.sh
