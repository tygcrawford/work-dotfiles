#!/bin/bash

# get default profile
profile=$(gsettings get org.gnome.Terminal.ProfilesList default)
profile=${profile:1:-1} # remove leading and trailing single quotes

# install fira code
fonts_dir="${HOME}/.local/share/fonts"
if [ ! -d "${fonts_dir}" ]; then
    echo "mkdir -p $fonts_dir"
    mkdir -p "${fonts_dir}"
else
    echo "Found fonts dir $fonts_dir"
fi

version=5.2
zip_name=Fira_Code_v${version}.zip
zip_path=${HOME}/Downloads/${zip_name}
curl --fail --location --show-error https://github.com/tonsky/FiraCode/releases/download/${version}/${zip} --output ${zip_path}
unzip -o -q -d ${fonts_dir} ${zip_path}
rm ${zip_path}
fc-cache -f

# set profile values
gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profile/" default-size-columns 150

palette key



def gsettings_set(key: str, value: Union[dict, list, str, bool], path: str = "") -> None:
    if type(value) in [dict, list]:
        value = json.dumps(value).replace('"', "'")
    elif type(value) == str:
        value = f"'{value}'"
    elif type(value) == bool:
        value = str(value).lower()

    if path:
        print(f"Setting {path}/ {key} to {value}")
        run(["gsettings", "set", f"{gsettings_path_base}:{path}/", f"{key}", f"{value}"])
    else:
        print(f"Setting {key} to {value}")
        run(["gsettings", "set", f"{gsettings_schema}", f"{key}", f"{value}"])


# handle the case where there are no profiles
try:
    profiles = gsettings_get("list")
except:
    profiles = []

for flavour, colours in palette.items():
    uuid = uuids[flavour]
    gsettings_set("visible-name", f"Catppuccin {flavour.capitalize()}", f"{uuid}")
    gsettings_set("background-color", colours["base"]["hex"], f"{uuid}")
    gsettings_set("foreground-color", colours["text"]["hex"], f"{uuid}")
    gsettings_set("highlight-colors-set", True, f"{uuid}")
    gsettings_set("highlight-background-color", colours["rosewater"]["hex"], f"{uuid}")
    gsettings_set("highlight-foreground-color", colours["surface2"]["hex"], f"{uuid}")
    gsettings_set("cursor-colors-set", True, f"{uuid}")
    gsettings_set("cursor-background-color", colours["rosewater"]["hex"], f"{uuid}")
    gsettings_set("cursor-foreground-color", colours["base"]["hex"], f"{uuid}")

    isLatte = flavour == "latte"
    colors = [
        isLatte and colours["subtext1"] or colours["surface1"],
        colours["red"],
        colours["green"],
        colours["yellow"],
        colours["blue"],
        colours["pink"],
        colours["teal"],
        isLatte and colours["surface2"] or colours["subtext1"],
        isLatte and colours["subtext0"] or colours["surface2"],
        colours["red"],
        colours["green"],
        colours["yellow"],
        colours["blue"],
        colours["pink"],
        colours["teal"],
        isLatte and colours["surface1"] or colours["subtext0"],
    ]
    gsettings_set("use-theme-colors", False, f"{uuid}")
    gsettings_set("palette", [color["hex"] for color in colors], f"{uuid}")

    if uuid not in profiles:
        profiles.append(uuid)

gsettings_set("list", profiles)
print("All profiles installed.")

