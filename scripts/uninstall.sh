#!/bin/bash

source $(dirname "$0")/utils.sh

# uninstall .vimrc
rm ${vimrc_path}

# uninstall catppuccin mocha from vim
rm ${vim_colors_path}/catppuccin_mocha.vim

# uninstall .tmux.conf
rm ${tmux_conf_path}

# uninstall fira code font
rm ${fonts_path}/FiraCodeNerdFont*
fc-cache -f

# remove lines from .bashrc
lines=$(cat ${bashrc_path} | grep "work_dotfiles")
varline=$(echo $lines | head --lines 1)
sourceline=$(echo $lines | tail -n 1)

sed -i.bak "/^${varline}/d" ${bashrc_path}
sed -i.bak "/^${sourceline}/d" ${bashrc_path}
