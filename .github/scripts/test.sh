#!/bin/bash

# Get the full path of the file that was changed
file_path=$(git diff-tree --no-commit-id --name-only -r HEAD | head -n 1)

# Get the name of the folder where the change was made
folder_name=$(dirname "$file_path")

# Change to the root of the repo
cd "$GITHUB_WORKSPACE"

# Change to the folder where the change was made
cd "$folder_name"

pwd
