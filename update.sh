#!/bin/bash

# import utils
project_path=$(cd $(dirname "$0") && git rev-parse --show-toplevel)
source $project_path/src/utils.sh

# run uninstall
bash ${project_path}/uninstall.sh

# update files
$(cd ${project_path} && git pull)

# run install
bash ${project_path}/install.sh
