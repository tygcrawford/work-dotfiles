#!/bin/bash

source $(dirname "$0")/utils.sh

# ensure fonts folder
[ ! -d "${fonts_path}" ] && mkdir -p "${fonts_path}"

# unzip fonts into folder
tempdir=$(mktemp -d)
trap 'rm -rf "$tempdir"' SIGTERM SIGINT EXIT
zip=${project_path}/assets/FiraCode.zip
unzip -o -q -d ${tempdir} ${zip}
mv ${tempdir}/FiraCodeNerdFontMono* ${fonts_path}

# add fonts
fc-cache -f

# set font in terminal
gterm_set font "FiraCode Nerd Font Mono 10"
gterm_set encoding "en_US.UTF-8"
