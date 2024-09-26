#!/bin/bash

# import utils
project_path=$(cd $(dirname "$0") && git rev-parse --show-toplevel)
source ${project_path}/scripts/utils.sh

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

# reset all gterm settings
gterm_reset font
gterm_reset encoding
gterm_reset visible-name
gterm_reset palette
gterm_reset background-color
gterm_reset foreground-color
gterm_reset highlight-colors-set
gterm_reset highlight-background-color
gterm_reset highlight-foreground-color
gterm_reset cursor-colors-set
gterm_reset cursor-background-color
gterm_reset use-theme-colors
