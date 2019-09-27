#!/bin/bash

# install brew

brew instal git
brew install git bash-completion

brew install ack
brew install curl
brew instal htop
brew instal jq
brew instal tmux
brew instal tree
brew install wget
brew install with-readline
brew install httpie
brew install rig

brew install crystal
brew install clojure
brew install erlang
brew install elixir
brew install go
brew install node
brew install rust

brew install mongodb
brew install redis
brew install postgresql

brew install sl
brew install cowsay
brew install ponysay

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

npm install -g wscat
