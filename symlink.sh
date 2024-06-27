#!/bin/sh 

# vars
parent_dir=$(basename "$(pwd)")
msg=$(git log -1 --pretty=%B)

_CONFIG_DIR="config"
_COC_FILE="config/coc-settings.json"
_WIKI_FILE="config/Wim.wiki"
_VIMRC_FILE="wim-vim"
_CHEAT_FILE="cheat40.txt"
_VIMWIKI_INDEX="index.wiki"

_VIMRC_FILE_DEST="$HOME/.vim/vimrc"
_COC_FILE_DEST="$HOME/.vim/coc-settings.json"
_WIKI_FILE_DEST="$HOME/.vim/vimwiki/Wim.wiki"
_CHEAT_FILE_DEST="$HOME/.vim/cheat40.txt"

_VIM_PATH="$HOME/.vim"
_WIKI_DIR="$_VIM_PATH/vimwiki"
_VIM_BK_PATH="$HOME/vim-bk"
_ARCHIVE_NAME="uctags-2024.06.20-linux-x86_64.tar.gz"
_ARCHIVE_EXTRACTED_NAME="uctags-2024.06.20-linux-x86_64"

# backup
backup()
{
	if [ -d "$_VIM_PATH" ]; then
		mv "$_VIM_PATH" "$_VIM_BK_PATH"
		mkdir -p "$_VIM_PATH"
		mkdir -p "$_WIKI_DIR"
	else
		mkdir -p "$_VIM_PATH"
		mkdir -p "$_WIKI_DIR"
	fi
}

# download ctags
downloadCtags()
{
	ctags_url="https://github.com/universal-ctags/ctags-nightly-build/releases/download/2024.06.20%2B8976ec3d2c48ec862593910388ae3e55f0e20a3f/uctags-2024.06.20-linux-x86_64.tar.gz"
	curl -Lo "$_ARCHIVE_NAME" "$ctags_url"
	tar -xzf "$_ARCHIVE_NAME"
	mkdir -p "$_VIM_PATH/uctags"
	mv "$_ARCHIVE_EXTRACTED_NAME"/* "$_VIM_PATH/uctags/"
	rm -rf "$_ARCHIVE_EXTRACTED_NAME"
	rm "$_ARCHIVE_NAME"
}

# Check parent wim dir exists
checkWimExist()
{
	if [ "$parent_dir" = "wim" ]; then
		printf "Wim Directory Exists!\nProceeding ...\n"
	else
		printf "Wim Directory Does Not Exists!\nBreaking! ...\n"
		exit 1
	fi

	if [ -d "$_CONFIG_DIR" ]; then
		printf "Config Directory Exists!\nProceeding ...\n"
	else
		printf "Config Directory Does Not Exists!\nBreaking! ...\n"
		exit 1
	fi
}

# link the files
linkFiles()
{
	printf "\e[42;30mSymlinking Latest Vimrc\e[0m\n"
	ln -sf "$(pwd)/$_VIMRC_FILE" "$_VIMRC_FILE_DEST"
	printf "\e[42;30mSymlinking Latest CoC Settings\e[0m\n"
	ln -sf "$(pwd)/$_COC_FILE" "$_COC_FILE_DEST"
	printf "\e[42;30mSymlinking Latest Wim Wiki\e[0m\n"
	ln -sf "$(pwd)/$_WIKI_FILE" "$_WIKI_FILE_DEST"
	printf "\e[42;30mSymlinking Latest Cheat File\e[0m\n"
	ln -sf "$(pwd)/$_CHEAT_FILE" "$_CHEAT_FILE_DEST"
	echo ""
    echo "[[Wim]]" >> "$_WIKI_DIR/$_VIMWIKI_INDEX"
}

createUpdateScript()
{
cat << 'EOF' > update.sh
#!/bin/sh

# Check parent wim dir exists
checkWimExist()
{
	if [ "$parent_dir" = "wim" ]; then
		printf "Wim Directory Exists!\nProceeding ...\n"
	else
		printf "Wim Directory Does Not Exists!\nBreaking! ...\n"
		exit 1
	fi

	if [ -d "$_CONFIG_DIR" ]; then
		printf "Config Directory Exists!\nProceeding ...\n"
	else
		printf "Config Directory Does Not Exists!\nBreaking! ...\n"
		exit 1
	fi
}

# link the files
linkFiles()
{
	printf "\e[42;30mSymlinking Latest Vimrc\e[0m\n"
	ln -sf "$(pwd)/$_VIMRC_FILE" "$_VIMRC_FILE_DEST"
	printf "\e[42;30mSymlinking Latest CoC Settings\e[0m\n"
	ln -sf "$(pwd)/$_COC_FILE" "$_COC_FILE_DEST"
	printf "\e[42;30mSymlinking Latest Wim Wiki\e[0m\n"
	ln -sf "$(pwd)/$_WIKI_FILE" "$_WIKI_FILE_DEST"
	printf "\e[42;30mSymlinking Latest Cheat File\e[0m\n"
	ln -sf "$(pwd)/$_CHEAT_FILE" "$_CHEAT_FILE_DEST"
	echo ""
	echo "[[Wim]]" >> "$_WIKI_DIR/$_VIMWIKI_INDEX"
}
EOF

chmod +x update.sh
echo "Update Script Generated!"
}
main()
{
	backup
	downloadCtags
	checkWimExist
	linkFiles
	createUpdateScript
}

main

printf "\e[43;30mPress Enter To Continue...\e[0m\n"
printf "\e[44;30mWhen You See C Extension Of Python3 Installed Successfully, Exit Vim. (you might have to scroll to see the msg)\e[0m\n"

vim

# Get latest commit msg and show to user
printf "\e[43;30mMessage From Woland: %s\e[0m\n" "$msg"
printf "\e[42;30mAll Done! Enjoy!\e[0m\n"
