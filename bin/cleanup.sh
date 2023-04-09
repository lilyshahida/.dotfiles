#!/bin/bash

rm "$HOME/.vimrc" 

sed -i '/source ~\/.dotfiles\/etc\/bashrc custom/d' "$HOME/.bashrc" 

rm -r "$HOME/.TRASH" 
