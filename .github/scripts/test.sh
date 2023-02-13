#!/bin/bash

# Set the GITHUB_WORKSPACE variable manually
GITHUB_WORKSPACE=$(pwd)

# Get the full path of the file that was changed
file_path=$(git diff-tree --no-commit-id --name-only -r HEAD | head -n 1)

# Get the name of the folder where the change was made
folder_name=$(dirname "$file_path")

# Change to the folder where the change was made
cd "$GITHUB_WORKSPACE/$folder_name"


pwd
