#!/bin/bash

# Parent directory path
parent_directory="C:/Users/saksh/OneDrive/Desktop/github/Finishing-Leetcode_part-4"

# Loop through each folder and clear contents of all files
for folder in "$parent_directory"/*/; do
    if [ -d "$folder" ]; then
        # Clear contents of all files within the folder
        find "$folder" -type f -exec sh -c '> "{}"' \;
        echo "Cleared contents of files in $folder"
    fi
done
