#!/bin/bash

project_path=$(cd $(dirname "$0") && git rev-parse --show-toplevel)
source $project_path/src/utils.sh

[ ! -d "${vim_colors_path}" ] && mkdir -p "${vim_colors_path}"

mv $project_path/assets/catppuccin_mocha.vim ${vim_colors_path}
