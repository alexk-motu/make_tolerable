#!/usr/bin/bash

# set git user deets
git config --global user.email "alexk@motu.com"
git config --global user.name "Alex Karpinski"


# get dnf
sudo yum install -y dnf

# get NeoVim
sudo dnf -y copr enable dperson/neovim; sudo dnf install -y neovim

# Move vimrc into place
cp vimrc ~/.vimrc
