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

# then get selected libs or apps

selected_libs=$(cat mac_libs | fzf -m --bind ctrl-a:select-all,ctrl-d:deselect-all,ctrl-t:toggle-all --header "❇️  Please choose libs you want to install. (tab: to select; ctrl+a: select all; ctrl+d: deselect all; ctrl+t: toggle all; ctrl+c: to skip)" --marker "v " | tr '\n' ' ')
selected_apps=$(cat mac_apps | fzf -m --bind ctrl-a:select-all,ctrl-d:deselect-all,ctrl-t:toggle-all --header "❇️  Please choose apps you want to install. (tab: to select; ctrl+a: select all; ctrl+d: deselect all; ctrl+t: toggle all: ctrl+c: to skip)" --marker "v " | tr '\n' ' ')

if [ "x$selected_libs" != "x" ]; then
    echo "❓ Selected libs: $selected_libs, hit Y[y] to install, any other key to abort."
    read input
    if [ $input = "Y" ] || [ $input = "y" ]; then
	to_install_libs=1
    fi
else
    echo "💡 no lib is selected."
fi

if [ "x$selected_apps" != "x" ]; then
    echo "❓ Selected apps: $selected_apps, hit Y[y] to install, any other key to abort."
    read input
    if [ $input = "Y" ] || [ $input = "y" ]; then
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

