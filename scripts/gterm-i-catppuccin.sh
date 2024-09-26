#!/bin/bash

source $(dirname "$0")/utils.sh

# set profile values
palette="['#454658','#e490a7','#b2e1a7','#f5e2b4','#91b2f4','#ecc3e4','#a5dfd5','#bbc1db','#585a6e','#e490a7','#b2e1a7','#f5e2b4','#91b2f4','#ecc3e4','#a5dfd5','#454658']"
gterm_set palette ${palette}

gterm_set background-color "#1e1d2c"
gterm_set foreground-color "#ced5f1"

gterm_set highlight-colors-set "true"
gterm_set highlight-background-color "#f1e0dc"
gterm_set highlight-foreground-color "#454658"

gterm_set cursor-colors-set "true"
gterm_set cursor-background-color "#f1e0dc"
gterm_set cursor-foreground-color "#1e1d2c"

gterm_set use-theme-colors "false"
