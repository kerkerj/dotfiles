#!/bin/bash

install_mac_libs() {
    local selected
    selected=$(cat mac_libs | fzf -m --bind ctrl-a:select-all,ctrl-d:deselect-all,ctrl-t:toggle-all --header "ctrl+a: select all, ctrl+d: deselect all, ctrl+t: toggle all" --marker "*" | tr '\n' ' ')

    if [ "x$selected" != "x" ]
    then
        echo "Selected apps: $selected, hit Y[y] to install, any other key to abort."
        read input
        if [ $input = "Y" ] || [ $input = "y" ]; then
            brew install $selected
        fi
    fi
}

install_mac_libs
