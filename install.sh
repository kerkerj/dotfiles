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

# install
vim +BundleInstall! +BundleClean +q
