#!/bin/bash

# import utils
project_path=$(cd $(dirname "$0") && git rev-parse --show-toplevel)
source $project_path/src/utils.sh

# install .vimrc
cp ${project_path}/src/.vimrc ${vimrc_path}

# install catppuccin mocha for vim
bash ${project_path}/src/vim-i-catppuccin.sh

# install .tmux.conf
cp ${project_path}/src/.tmux.conf ${tmux_conf_path}

# install fira code font
bash ${project_path}/src/gterm-i-fira.sh

# install catppuccin profile for gnome terminal
bash ${project_path}/src/gterm-i-catppuccin.sh

# source bash_addons in bash_rc
echo "work_dotfiles=${project_path}" >> ${bashrc_path}
echo 'source $work_dotfiles/src/bash_addons' >> ${bashrc_path}
