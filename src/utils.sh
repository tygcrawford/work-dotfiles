#!/bin/bash

vimrc_path=${HOME}/.vimrc
vim_colors_path=${HOME}/.vim/colors

tmux_conf_path=${HOME}/.tmux.conf

bashrc_path=${HOME}/.bashrc

fonts_path=${HOME}/.local/share/fonts

profile=$(gsettings get org.gnome.Terminal.ProfilesList default)
profile=${profile:1:-1}
full_profile=org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/

function gterm_set() {
  key=$1
  value=$2
  gsettings set ${full_profile} ${key} ${value}
}

