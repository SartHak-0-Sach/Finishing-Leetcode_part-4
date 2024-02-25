#!/bin/bash

# Parent directory path
parent_directory="C:/Users/saksh/OneDrive/Desktop/github/Finishing-Leetcode_part-4"

# Source directory to copy from
source_directory="$parent_directory/3023-"

# Loop to create new folders and copy contents
for ((i=3024; i<=3049; i++)); do
    new_folder="$parent_directory/$i-"
    mkdir -p "$new_folder"  # Create new folder if it doesn't exist
    cp -r "$source_directory"/* "$new_folder"
    echo "Copied contents of 3023- to $new_folder"
done
