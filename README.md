# Dotfiles for Work

## Purpose

This is meant to be a barebones dotfiles repository for applications like vim, tmux, and gnu terminal.
I made this repository to avoid the use of the use of package managers that call from numerous untrusted repositories and 
the instalation of packages for things like terminal emulation while still ending up with a functional, easy on the eyes
interface.

## Instalation

### gterm-i-fira.sh

**This file will curl the Fira Code zip file from its official repository!**

This file can just be run with bash and is meant to download and apply the popular fira code font to the default gnome terminal.
The the terminal application will need to be closed and restarted after this for changes to take effect.

### gterm-i-catppuccin.sh

This file can also be run with bash and is meant to apply the 'catppuccin mocha' colors to the gnu terminal using the
built-in gsettings package.

### vim-i-catppuccin.sh

**This file will curl the catppuccin-mocha.vim file from its official repository!**

This is a basic script that puts the colorscheme file for catppuccin mocha into the correct directory and creates it if it does not exist.

### .vimrc

This is a standard .vimrc file that makes a number of small changes for better usability and enjoyability.
Place this file in your home directory for it to take effect.

### .tmux.conf

This is a standard .tmux.conf file that makes usability changes as well as adding a minimal but readable statusline.
Place this file in your home directory for it to take effect.

