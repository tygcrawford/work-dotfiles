# Dotfiles for Work

## Purpose

This is meant to be a barebones dotfiles repository.
I made this repository to avoid unnecessary downloads from package managers into safe environments 
while keeping important features and design in mind.

## Instalation

### gterm-i-fira.sh

**This file will curl the Fira Code zip file from its official repository!**

Bash file to download and apply the font 'Fira Code' gnome terminal using the gnome native gsettings command.
The gnome terminal will need to be restarted after the script runs for changes to take effect.

### gterm-i-catppuccin.sh

Bash file to apply the 'catppuccin mocha' colors to the gnu terminal using the gnome native gsettings command.

### vim-i-catppuccin.sh

**This file will curl the catppuccin-mocha.vim file from its official repository!**

Bash file to put the 'catppuccin mocha' colorscheme file into ${HOME}/.vim/colors and create it if it does not exist.

### .vimrc

A standard .vimrc file that makes a number of small changes for better usability and enjoyability.
Place this file in your home directory for it to take effect.

### .tmux.conf

A standard .tmux.conf file that makes usability changes as well as adding a readable statusline.
Place this file in your home directory for it to take effect.
