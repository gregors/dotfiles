#!/bin/bash

# install packages
sudo apt-get install -q -y git-core
sudo apt-get install -q -y tree
sudo apt-get install -q -y htop
sudo apt-get install -q -y tmux
sudo apt-get install -q -y vim
sudo apt-get install -q -y wget
sudo apt-get install -q -y curl
sudo apt-get install -q -y mercurial

# install vim package manager
git clone git://github.com/gmarik/vundle.git ~/.vim/bundle/vundle


# copy my config files over
cp .gemrc ..
cp .gitconfig ..
cp .hgrc ..
cp .tmux.conf ..
cp .vimrc ..
