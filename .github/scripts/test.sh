#!/bin/bash

# Folders to exclude
exclude=".git"

# Get the list of folders in the root of the repository
folders=$(find . -maxdepth 1 -type d | grep -v "^\.$")

# Count the number of folders
num_folders=0

# Loop over each folder
for folder in $folders; do
  # Check if the folder is in the exclusion list
  if [[ $exclude != *" $folder "* ]]; then
    # Change into the folder
    cd "$folder"

    # List the contents of the folder
    echo "Contents of folder $folder:"
    ls

    # Change back to the root of the repository
    cd ..

    # Increment the counter
    num_folders=$((num_folders + 1))
  fi
done

# Print the number of folders
echo "Number of folders: $num_folders"

