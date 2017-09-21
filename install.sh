#!/usr/bin/bash

# set git user deets
git config --global user.email "alexk@motu.com"
git config --global user.name "Alex Karpinski"

# get NeoVim
sudo yum -y copr enable dperson/neovim; sudo yum install -y neovim

# Move vimrc into place
mkdir -p ~/.config/nvim/undo
cp vimrc ~/.config/nvim/init.vim 

# overwrite vim with neovim
sudo mv /usr/bin/vim /usr/bin/vim.orig
sudo ln -s /usr/bin/nvim /usr/bin/vim

# install some plugins
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
