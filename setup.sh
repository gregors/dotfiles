#!/bin/bash

# install packages
sudo apt-get install -q -y git-core
sudo apt-get install -q -y tree
sudo apt-get install -q -y htop
sudo apt-get install -q -y tmux
sudo apt-get install -q -y vim-nox
sudo apt-get install -q -y wget
sudo apt-get install -q -y curl
sudo apt-get install -q -y mercurial
sudo apt-get install -q -y ack-grep
sudo apt-get install -q -y sqlite3

# install vim package manager
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim


# copy my config files over
ln -nfs ~/dot-files/.gemrc ~/.gemrc
ln -nfs ~/dot-files/.gitconfig ~/.gitconfig
ln -nfs ~/dot-files/.hgrc ~/.hgrc
ln -nfs ~/dot-files/.tmux.conf ~/.tmux.conf
ln -nfs ~/dot-files/.vimrc ~/.vimrc

# set caps lock to ctrl
setxkbmap -layout us -option ctrl:nocaps

git config --global core.excludesfile '~/.gitignore'
ln -nfs ~/dot-files/.gitignore ~/.gitignore
