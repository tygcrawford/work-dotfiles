#!/bin/bash

source $(dirname "$0")/utils.sh

[ ! -d "${vim_colors_path}" ] && mkdir -p "${vim_colors_path}"

mv ${project_path}/assets/catppuccin_mocha.vim ${vim_colors_path}
