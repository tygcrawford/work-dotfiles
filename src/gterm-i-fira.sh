#!/bin/bash

project_path=$(cd $(dirname "$0") && git rev-parse --show-toplevel)
source $project_path/src/utils.sh

# ensure fonts folder
[ ! -d "${fonts_path}" ] && mkdir -p "${fonts_path}"

# unzip fonts into folder
zip=${project_path}/assets/FiraCode.zip
unzip -o -q -d ${fonts_path} ${zip}
$(cd ${fonts_path} && rm README.md LICENSE)

# add fonts
fc-cache -f

# set font in terminal
gterm_set font "FiraCode Nerd Font Mono 10"
gterm_set encoding "en_US.UTF-8"
