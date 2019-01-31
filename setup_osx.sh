#!/bin/bash

# install brew

brew instal git
brew install git bash-completion

brew instal tree
brew instal htop
brew instal tmux
brew install wget
brew install curl
brew install ack

# install vim package manager
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim


# copy my config files over
ln -nfs ~/dot-files/.gemrc ~/.gemrc
ln -nfs ~/dot-files/.gitconfig ~/.gitconfig
ln -nfs ~/dot-files/.hgrc ~/.hgrc
ln -nfs ~/dot-files/.tmux.conf ~/.tmux.conf
ln -nfs ~/dot-files/.vimrc ~/.vimrc
cp ~/dot-files/.bash_profile ~/.bash_profile

git config --global core.excludesfile '~/.gitignore'
ln -nfs ~/dot-files/.gitignore ~/.gitignore
