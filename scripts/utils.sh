#!/bin/bash

vimrc_path=${HOME}/.vimrc
vim_colors_path=${HOME}/.vim/colors
tmux_conf_path=${HOME}/.tmux.conf
bashrc_path=${HOME}/.bashrc
fonts_path=${HOME}/.local/share/fonts

project_path=$(cd $(dirname "$0") && git rev-parse --show-toplevel)


function gterm_mk_profile() {
  uuid=$(uuidgen)
  profiles=$(gsettings get org.gnome.Terminal.ProfilesList list)
  gsettings set org.gnome.Terminal.ProfilesList list "[${profiles:1:-1}, '${uuid}']"
  echo "profile=${uuid}" > "$(dirname "$0")/.env"

  gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${uuid}/" visible-name dotfiles
  gsettings set org.gnome.Terminal.ProfilesList defualt "${uuid}"
}

function gterm_get_profile() {
  [ ! -f "$(dirname "$0")/.env" ] && gterm_mk_profile
  source "$(dirname "$0")/.env"
}

gterm_get_profile

function gterm_set() {
  key=$1
  value=$2
  gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/" ${key} ${value}
}
