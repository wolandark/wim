#!/bin/sh 

# vars
_VIM_PATH="$HOME/.vim/"
_VIM_BK_PATH="$HOME/vim-bk/"
_ARCHIVE_NAME="uctags-2024.06.20-linux-x86_64.tar.gz"
_ARCHIVE_EXTRACTED_NAME="uctags-2024.06.20-linux-x86_64.tar.gz"
_COC_JSON="https://raw.githubusercontent.com/wolandark/wim/master/config/coc-settings.json"
_CHEAT_FILE="https://raw.githubusercontent.com/wolandark/wim/master/config/cheat40.txt"
_VIMRC_FILE="$_VIM_PATH/vimrc"
_VIMRC_FILE_REMOTE="https://raw.githubusercontent.com/wolandark/wim/master/wim-vim"
_VIMWIKI_PATH="$_VIM_PATH/vimwiki"
_VIMWIKI_INDEX="$_VIMWIKI_PATH/index.wiki"
_VIMWIKI_WIM="$_VIMWIKI_PATH/Wim.wiki"
_VIMWIKI_WIM_REMOTE="https://raw.githubusercontent.com/wolandark/wim/master/config/Wim.wiki"

# backup
backup()
{
	if [ -d "$_VIM_PATH" ];
	then
		mv "$_VIM_PATH" "$_VIM_BK_PATH"
		mkdir "$_VIM_PATH"
	else
		mkdir "$_VIM_PATH"
	fi
}

# download
downloadCtags()
{
	ctags_url="https://github.com/universal-ctags/ctags-nightly-build/releases/download/2024.06.20%2B8976ec3d2c48ec862593910388ae3e55f0e20a3f/uctags-2024.06.20-linux-x86_64.tar.gz"
	curl -Lo "$ctags_url"
	tar -xzf "$_ARCHIVE_NAME"
	mv "$_ARCHIVE_EXTRACTED_NAME" "$_VIM_PATH"/uctags/
	rm "$_ARCHIVE_NAME"
}

getFiles()
{
	curl -fLo "$_VIM_PATH"/cheat40.txt "$_CHEAT_FILE" 
	curl -fLo  "$_VIM_PATH"/coc-settings.json "$_COC_JSON"
	curl -fLo "$_VIMRC_FILE" "_$_VIMRC_FILE_REMOTE"
}

setupVimWiki()
{
	mkdir -p "$_VIMWIKI_PATH"
	curl -fLo "$_VIMWIKI_PATH" "$_VIMWIKI_WIM_REMOTE"
	echo "[[Wim]]" > "$_VIMWIKI_PATH"/"$_VIMWIKI_INDEX"
}

main()
{
	backup 
	#downloadCtags 
	getFiles
	setupVimWiki
}

main
