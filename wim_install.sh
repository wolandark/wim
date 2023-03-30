#!/bin/bash

# Written By Woland

# A pathetic shell script that installs Wim and its dependencies on Arch and
# other arch-based distros

# https://github.com/wolandark
# https://github.com/wolandark/wim

sudo pacman -S nodejs npm figlet fzf curl

git clone https://github.com/wolandark.wim.git

mv wim/.vimrc $HOME/.vimrc

# curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    # https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim &

echo "All Done!"
exit 0
