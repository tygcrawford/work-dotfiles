#!/bin/bash

# import utils
project_path=$(cd $(dirname "$0") && git rev-parse --show-toplevel)
source ${project_path}/scripts/utils.sh

# install .vimrc
cp ${project_path}/.vimrc ${vimrc_path}

# install catppuccin mocha for vim
bash ${project_path}/scripts/vim-i-catppuccin.sh

# install .tmux.conf
cp ${project_path}/.tmux.conf ${tmux_conf_path}

# install fira code font
bash ${project_path}/scripts/gterm-i-fira.sh

# install catppuccin profile for gnome terminal
bash ${project_path}/scripts/gterm-i-catppuccin.sh

# source bash_addons in bash_rc
echo "work_dotfiles=${project_path}" >> ${bashrc_path}
echo 'source ${work_dotfiles}/bash_addons' >> ${bashrc_path}
