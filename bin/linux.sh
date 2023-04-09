#!/bin/bash

if [ "$(uname)" != "Linux" ]; then
	echo "Error: This script only works on Linux." >> linuxsetup.log
	exit 1
fi

if [ ! -d "$HOME/.TRASH" ]; then
	mkdir "$HOME/.TRASH"
fi

if [ -f "$HOME/.vimrc" ]; then
	mv "$HOME/.vimrc" "$HOME/.bup vimrc" 
	echo "The current .vimrc file was changed to '.bup vimrc'" >> linuxsetup.log
fi

cp /etc/vimrc "$HOME/.vimrc"

echo "source ~/.dotfiles/etc/bashrc custom" >> "$HOME/.bashrc" 
