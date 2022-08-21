#!/bin/bash

# install packages
sudo apt-get install -q -y git-core
sudo apt-get install git bash-completion

sudo apt-get install -q -y tree
sudo apt-get install -q -y htop
sudo apt-get install -q -y tmux
sudo apt-get install -q -y wget
sudo apt-get install -q -y curl
sudo apt-get install -q -y httpie
sudo apt-get install -q -y jq
sudo apt-get install -q -y ack-grep
sudo apt-get install -q -y xclip
sudo apt-get install -q -y lynx
sudo apt-get install -q -y aspell
sudo apt-get install -q -y dos2unix
sudo apt-get install -q -y bat
sudo apt-get install -q -y iptraf-ng

sudo apt-get install -q -y vim-nox

# databases
sudo apt-get install -q -y sqlite3
sudo apt-get install -q -y postgresql
sudo apt-get install -q -y redis
sudo apt-get install -q -y mongodb

# fun
sudo apt-get install -q -y sl
sudo apt-get install -q -y cowsay
sudo apt-get install -q -y neofetch
sudo apt-get install -q -y tty-clock
#apt-get install cmatrix cmatrix-xfont libaa-bin caca-utils bb

# install vim package manager
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim


# copy my config files over
# -n = treat directories as normal files, enables rewriting them
# -f = force, remove existing files
# -s = symbolic
ln -nfs ~/dotfiles/.gemrc ~/.gemrc
ln -nfs ~/dotfiles/.gitconfig ~/.gitconfig
ln -nfs ~/dotfiles/.bash_aliases ~/.bash_aliases
#ln -nfs ~/dotfiles/.hgrc ~/.hgrc
ln -nfs ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -nfs ~/dotfiles/.vimrc ~/.vimrc

# set caps lock to ctrl
#setxkbmap -layout us -option ctrl:nocaps

git config --global core.excludesfile '~/.gitignore'
ln -nfs ~/dotfiles/.gitignore ~/.gitignore

# annoyances
sudo apt remove tracker
sudo apt purge whoopsie

sudo systemctl disable postgresql
sudo systemctl disable redis
sudo systemctl disable mongodb
sudo systemctl disable bluetooth
sudo systemctl disable cups

sudo systemctl stop postgresql
sudo systemctl stop redis
sudo systemctl stop mongodb
sudo systemctl stop bluetooth
sudo systemctl stop cups

