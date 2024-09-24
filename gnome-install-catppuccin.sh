#!/bin/bash

# get default profile
profile=$(gsettings get org.gnome.Terminal.ProfilesList default)
profile=${profile:1:-1} # remove leading and trailing single quotes
full_profile=org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/

# set profile values
gsettings set ${full_profile} visible-name "Catppuccin Mocha"
gsettings set ${full_profile} palette "['#454658','#e490a7','#b2e1a7','#f5e2b4','#91b2f4','#ecc3e4','#a5dfd5','#bbc1db','#585a6e','#e490a7','#b2e1a7','#f5e2b4','#91b2f4','#ecc3e4','#a5dfd5','#454658']"
gsettings set ${full_profile} background-color "#1e1d2c"
gsettings set ${full_profile} foreground-color "#ced5f1"
gsettings set ${full_profile} highlight-colors-set "true"
gsettings set ${full_profile} highlight-background-color "#f1e0dc"
gsettings set ${full_profile} highlight-foreground-color "#454658"
gsettings set ${full_profile} cursor-colors-set "true"
gsettings set ${full_profile} cursor-background-color "#f1e0dc"
gsettings set ${full_profile} cursor-foreground-color "#1e1d2c"
gsettings set ${full_profile} use-theme-colors "false"
