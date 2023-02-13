#!/bin/bash

# Get the list of folders in the root of the repository
folders=$(find . -maxdepth 1 -type d | grep -v "^\.$")

# Count the number of folders
num_folders=$(echo "$folders" | wc -l)

# Loop over each folder
for folder in $folders; do
  # Change into the folder
  cd "$folder"

  # List the contents of the folder
  echo "Contents of folder $folder:"
  ls

  # Change back to the root of the repository
  cd ..
done

# Print the number of folders
echo "Number of folders: $num_folders"
