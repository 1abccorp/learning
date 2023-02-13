#!/bin/bash

# Get the name of the folder where the change was made
folder_name=$(git diff-tree --no-commit-id --name-only -r HEAD | awk -F/ '{print $1}' | uniq)

# Change to the root of the repo
cd "$GITHUB_WORKSPACE"

# Change to the folder where the change was made
cd "$folder_name"

pwd
