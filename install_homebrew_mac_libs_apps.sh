#!/bin/bash

# check homebrew
echo "❇️  Checking homebrew..."
brew --help &>/dev/null || (echo "☠️  Please install homebrew(https://brew.sh/) first, exiting..." & exit)

# install fzf first
echo "❇️  Checking fzf installation..."
brew list fzf &> /dev/null || brew install fzf

# taps
echo "❇️  Checking homebrew taps..."
brew tap homebrew/cask-fonts 
brew tap homebrew/cask-drivers
brew tap tclass/cloud_sql_proxy
brew tap batchcorp/public
brew tap conduktor/brew
brew tap dbcli/tap
brew tap drone/drone
brew tap dty1er/tap
brew tap getsentry/tools
brew tap go-swagger/go-swagger
brew tap golangci/tap
brew tap goreleaser/tap
brew tap hashicorp/tap
brew tap homebrew/bundle
brew tap homebrew/cask
brew tap homebrew/cask-versions
brew tap homebrew/core
brew tap homebrew/services
brew tap muesli/tap
brew tap nakabonne/ali
brew tap pyroscope-io/brew
brew tap reviewdog/tap
brew tap robscott/tap
brew tap rs/tap
brew tap vektra/tap
brew tap ycd/tap

# then get selected libs or apps

selected_libs=$(cat mac_libs | fzf -m --tac --bind ctrl-a:select-all,ctrl-d:deselect-all,ctrl-t:toggle-all --header "❇️  Please choose libs you want to install. (tab: to select; ctrl+a: select all; ctrl+d: deselect all; ctrl+t: toggle all; ctrl+c: to skip)" --marker "v " | tr '\n' ' ')
selected_apps=$(cat mac_apps | fzf -m --tac --bind ctrl-a:select-all,ctrl-d:deselect-all,ctrl-t:toggle-all --header "❇️  Please choose apps you want to install. (tab: to select; ctrl+a: select all; ctrl+d: deselect all; ctrl+t: toggle all: ctrl+c: to skip)" --marker "v " | tr '\n' ' ')

if [ "x$selected_libs" != "x" ]; then
    read -p "❓ Selected libs: $selected_libs, hit Y[y] to install, any other key to abort. " REPLY
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        to_install_libs=1
    fi
else
    echo "💡 no lib is selected."
fi

if [ "x$selected_apps" != "x" ]; then
    read -p "❓ Selected apps: $selected_apps, hit Y[y] to install, any other key to abort. " REPLY
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        to_install_apps=1
    fi
else
    echo "💡 no app is selected."
fi

# install if there is anything selected

if [ "$to_install_libs" = "1" ]; then
    echo "➡️  Installing libs..."
    brew install $selected_libs
fi

if [ "$to_install_apps" = "1" ]; then
    echo "➡️  Installing apps..."
    brew install --cask $selected_apps
fi

