#!/bin/sh 

# backup
backup()
{
	if [ -d ~/.vim ];
	then
		mv ~/.vim vim-backup 
	fi
}

downloadCtags()
{
	ctags_url="https://github.com/universal-ctags/ctags-nightly-build/releases/download/2024.06.20%2B8976ec3d2c48ec862593910388ae3e55f0e20a3f/uctags-2024.06.20-linux-x86_64.tar.gz"
	curl -Lo "$ctags_url"
	mv "uctags-2024.06.20-linux-x86_64.tar.gz"
}


# download
#
#
# rename
#
# launch vim
#
