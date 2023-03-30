#!/bin/bash

# Written By Woland

# A pathetic shell script that installs Wim and its dependencies on Arch and
# other arch-based distros

# https://github.com/wolandark
# https://github.com/wolandark/wim

sudo pacman -S nodejs npm figlet fzf curl git vim

git clone https://github.com/wolandark/wim.git
git clone https://aur.archlinux.org/boxes.git

cd ~/boxes
makepkg -sri
cd

mv $HOME/wim/wim-3.1.vimrc $HOME/.vimrc
sudo mv $HOME/wim/roman.flf /usr/share/figlet/fonts/

echo "All Done! You can now start using Wim"
exit 0
#Vim Plug installation command for Unix-Gnu/Linux 
#curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
#    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim



