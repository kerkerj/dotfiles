#!/bin/bash

# make links
ln -s `pwd`/vimrc.before.local ~/.vimrc.before.local
ln -s `pwd`/vimrc.bundles.local ~/.vimrc.bundles.local
ln -s `pwd`/vimrc.local ~/.vimrc.local
ln -s `pwd`/tmux.conf ~/.tmux.conf
ln -s `pwd`/.gitignore_global ~/.gitignore_global
ln -s `pwd`/.gitconfig ~/.gitconfig
ln -s `pwd`/Brewfile ~/Brewfile
ln -s `pwd`/.gemrc ~/.gemrc
ln -s `pwd`/.agignore ~/.agignore
ln -s `pwd`/hubconfig ~/.config/hub
ln -s `pwd`/.ideavimrc ~/.ideavimrc

# install
vim +BundleInstall! +BundleClean +q

# show hidden files
./scripts/show_hidden_files.sh

# brew install
# TODO make a selectable option while executing this script
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install cmake reattach-to-user-namespace ctags-exuberant autojump diff-so-fancy direnv fzf envchain httpie hub jq git git-extras git-flow neovim peco reattach-to-user-namespace the_silver_searcher tig tmux tree wget watch
brew cask install appcleaner dropbox droplr hyperswitch dash insomnia kekadefaultapp alfred boostnote goland dozer docker spectacle typora zoomus iterm2 launchrocket sourcetree postman
