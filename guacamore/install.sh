#!/bin/zsh

#curl -fsSL https://rawgit.com/kube/42homebrew/master/install.sh | zsh
brew install readline
brew install bat
brew install exa
mkdir -p ~/.vim/bundle
git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
cd  ~/.vim
mkdir colors
git clone https://github.com/tomasr/molokai
mv molokai/colors/molokai.vim ~/.vim/colors/
