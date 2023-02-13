#!/bin/bash

git diff-tree --no-commit-id --name-only -r HEAD | awk -F/ '{print $1}' | uniq
# Get the name of the folder where the change was made
folder_name=$(git diff-tree --no-commit-id --name-only -r HEAD | awk -F/ '{print $1}' | uniq)

echo "$folder_name"
# Change to the folder where the change was made
cd "$folder_name"

echo "$pwd"
