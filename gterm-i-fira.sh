#!/bin/bash

# get default profile
profile=$(gsettings get org.gnome.Terminal.ProfilesList default)
profile=${profile:1:-1} # remove leading and trailing single quotes
full_profile=org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/

# install fira code
fonts_dir="${HOME}/.local/share/fonts"
[ ! -d "${fonts_dir}" ] && mkdir -p "${fonts_dir}"


version=5.2
zip=Fira_Code_v${version}.zip
curl --fail --location --show-error https://github.com/tonsky/FiraCode/releases/download/${version}/${zip} --output ${zip}
unzip -o -q -d ${fonts_dir} ${zip}
rm ${zip}

fc-cache -f

gsettings set ${full_profile} font "Fira Code 10"

