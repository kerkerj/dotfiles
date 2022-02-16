#!/bin/bash

# install oh-my-zsh
echo "Installing oh-my-zsh... https://github.com/robbyrussell/oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# make links
ln -s `pwd`/vimrc.before.local ~/.vimrc.before.local
ln -s `pwd`/vimrc.bundles.local ~/.vimrc.bundles.local
ln -s `pwd`/vimrc.local ~/.vimrc.local
ln -s `pwd`/tmux.conf ~/.tmux.conf
ln -s `pwd`/.gitignore_global ~/.gitignore_global
ln -s `pwd`/.gitconfig ~/.gitconfig
# ln -s `pwd`/Brewfile ~/Brewfile
ln -s `pwd`/.gemrc ~/.gemrc
ln -s `pwd`/.agignore ~/.agignore
ln -s `pwd`/hubconfig ~/.config/hub
ln -s `pwd`/.ideavimrc ~/.ideavimrc

# show hidden files
./scripts/show_hidden_files.sh

# Setup neovim
mkdir -p ~/.config/nvim/
cat <<EOT >> ~/.config/nvim/init.vim
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
EOT

# install spf13-vim
echo "Installing spf13-vim..."
curl https://j.mp/spf13-vim3 -L > spf13-vim.sh && sh spf13-vim.sh

# fix spf13-vim HTML-Autotag error
echo "fixing spf13-vim HTML-autotag error... https://github.com/spf13/spf13-vim/pull/1035"
sed -i '' 's/amirh/vim-scripts/' ~/.vimrc.bundles

# install zsh auto suggestion
echo "Installing zsh-autosuggestion..."
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# vim update
nvim +BundleInstall! +BundleClean +q

