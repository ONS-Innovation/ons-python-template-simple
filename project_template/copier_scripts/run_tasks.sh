#!/bin/bash

set -euo pipefail

# Set up package manager
./copier_scripts/setup_package_manager.sh

# Set up git repo only when requested
if [[ "${SET_UP_GIT_REPO,,}" == "true" ]]; then
    ./copier_scripts/setup_git_repo.sh
fi

# Delete the copier scripts
rm -rf copier_scripts
