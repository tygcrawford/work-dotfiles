#!/bin/bash
colors_dir="${HOME}/.vim/colors"
[ ! -d "${colors_dir}" ] && mkdir -p "${colors_dir}"
catppuccin_url=https://raw.githubusercontent.com/catppuccin/vim/refs/heads/main/colors/catppuccin_mocha.vim
$(cd ${colors_dir} && curl -O ${catppuccin_url})

