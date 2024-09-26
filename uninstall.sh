#!/bin/bash

# import utils
project_path=$(cd $(dirname "$0") && git rev-parse --show-toplevel)
source $project_path/src/utils.sh

# uninstall .vimrc
rm ${vimrc_path}

# uninstall catppuccin mocha from vim
rm ${vim_colors_path}/catppuccin_mocha.vim

# uninstall .tmux.conf
rm ${tmux_conf_path}

# uninstall fira code font
rm FiraCodeNerdFont*
fc-cache -f

# remove lines from .bashrc
lines=$(cat ${bashrc_path} | grep "work_dotfiles")
varline=$(echo $lines | head --lines 1)
sourceline=$(echo $lines | tail -n 1)

sed -i ${varline} ${bashrc_path}
sed -i ${sourceline} ${bashrc_path}
