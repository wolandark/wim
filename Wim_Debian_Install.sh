#!/bin/bash

# Written By Woland

# A simple shell script that installs Wim and its dependencies on Debian and
# other Debian-based distros

# https://github.com/wolandark
# https://github.com/wolandark/wim

# VARS
WIM_VIMRC="wim/wim-3.2.vimrc"
ROMAN_FLF="/usr/share/figlet/roman.flf"

# Install required packages
sudo apt install golang nodejs npm figlet fzf curl git vim || {
    echo "Error: Failed to install required packages"
    exit 1
}

# Clone repositories
git clone https://github.com/wolandark/wim.git || {
    echo "Error: Failed to clone wim repository"
    exit 1
}

# Check if required files and directories exist
if [[ ! -f "$WIM_VIMRC" ]]; then
    echo "Error: $WIM_VIMRC does not exist"
    exit 1
fi

if [[ ! -f "$ROMAN_FLF" ]]; then
sudo mv "wim/roman.flf" "$ROMAN_FLF" 
fi

# Move files to their respective locations
mv "$WIM_VIMRC" "$HOME/.vimrc" || {
    echo "Error: Failed to move wim-3.1.vimrc to $HOME/.vimrc"
    exit 1
}

# Unlimited history dir
mkdir $HOME/.vimhis

# All done!
printf "%-25s \033[7;32mDone\033[0m\n"
printf "%-25s \033[7;32mYou should now start vim and wait for the plugins to install\033[0m\n"
exit 0
