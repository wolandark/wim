#!/bin/sh 

# vars
parent_dir=$(basename "$(pwd)")
msg=$(git log -1 --pretty=%B)

_COC_FILE="coc-settings.json"
_WIKI_FILE="Wim.wiki"
_VIMRC_FILE="wim-vim"

_VIMRC_FILE_DEST="$HOME/.vim/vimrc"
_COC_FILE_DEST="$HOME/.vim/coc-settings.json"
_WIKI_FILE_DEST="$HOME/.vim/vimwiki/Wim.wiki"

# Check parent wim dir exists
if [ "$parent_dir" = "wim" ]; then
	printf "Wim Directory Exists!\nProceeding ...\n"
fi

# link the files
printf "\e[42;30mSymlinking Latest Vimrc\e[0m\n"
ln -s "$_VIMRC_FILE" "$_VIMRC_FILE_DEST"
printf "\e[42;30mSymlinking Latest CoC Settings\e[0m\n"
ln -s "_$_COC_FILE" "$_COC_FILE_DEST"
printf "\e[42;30mSymlinking Latest Wim Wiki\e[0m\n"
ln -s "$_WIKI_FILE" "$_WIKI_FILE_DEST"

echo ""

# Get latest commit msg and show to user
printf "\e[43;30mMessage From Woland: %s\e[0m\n" "$msg"
