#!/bin/bash

# install brew

brew instal git
brew install git-gui
brew install git bash-completion

brew instal tree
brew instal htop
brew instal tmux
brew install ack
brew install curl
brew install wget
brew install httpie
brew instal jq
brew install with-readline
brew install rig
brew install lynx
brew install aspell
brew install dos2unix
brew install bat

# languaages
brew install gnu-apl
brew install crystal
brew install clisp
brew install clojure
brew install erlang
brew install elixir
brew install go
brew install mit-scheme
brew install node
brew install rust

# databases
brew install sqlite
brew install postgresql
brew install redis
brew install mongodb

brew install sl
brew install cowsay
brew install ponysay
brew install neofetch

# install vim package manager
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim


# copy my config files over
ln -nfs ~/dotfiles/.gemrc ~/.gemrc
ln -nfs ~/dotfiles/.gitconfig ~/.gitconfig
ln -nfs ~/dotfiles/.hgrc ~/.hgrc
ln -nfs ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -nfs ~/dotfiles/.vimrc ~/.vimrc
cp ~/dotfiles/.bash_profile ~/.bash_profile

git config --global core.excludesfile '~/.gitignore'
ln -nfs ~/dotfiles/.gitignore ~/.gitignore

npm install -g wscat
# curl -o- -L https://yarnpkg.com/install.sh | bash

