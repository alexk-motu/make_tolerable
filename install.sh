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
mkdir -p ~/.vim/undo

# overwrite vim with neovim
sudo mv /usr/bin/vim /usr/bin/vim.orig
sudo ln -s /usr/bin/nvim /usr/bin/vim

# install some plugins
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
