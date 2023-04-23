#!/bin/bash

# Written By Woland

# A pathetic shell script that installs Wim and its dependencies on Arch and
# other arch-based distros

# https://github.com/wolandark
# https://github.com/wolandark/wim

# Define required files and directories
WIM_VIMRC="$HOME/wim/wim-3.1.vimrc"
ROMAN_FLF="/usr/share/figlet/fonts/roman.flf"
BOXES_DIR="$HOME/boxes"

# Install required packages
sudo pacman -S nodejs npm figlet fzf curl git vim || {
    echo "Error: Failed to install required packages"
    exit 1
}

# Clone repositories
git clone https://github.com/wolandark/wim.git || {
    echo "Error: Failed to clone wim repository"
    exit 1
}

git clone https://aur.archlinux.org/boxes.git || {
    echo "Error: Failed to clone boxes repository"
    exit 1
}

# Check if required files and directories exist
if [[ ! -f "$WIM_VIMRC" ]]; then
    echo "Error: $WIM_VIMRC does not exist"
    exit 1
fi

if [[ ! -f "$ROMAN_FLF" ]]; then
    echo "Error: $ROMAN_FLF does not exist"
    exit 1
fi

if [[ ! -d "$BOXES_DIR" ]]; then
    echo "Error: $BOXES_DIR does not exist"
    exit 1
fi

# Build and install boxes
cd "$BOXES_DIR"
makepkg -sri || {
    echo "Error: Failed to build and install boxes"
    exit 1
}
cd -

# Move files to their respective locations
mv "$WIM_VIMRC" "$HOME/.vimrc" || {
    echo "Error: Failed to move wim-3.1.vimrc to $HOME/.vimrc"
    exit 1
}

sudo mv "$HOME/wim/roman.flf" "$ROMAN_FLF" || {
    echo "Error: Failed to move roman.flf to $ROMAN_FLF"
    exit 1
}

# All done!
echo "All Done! You can now start using Wim"
exit 0
