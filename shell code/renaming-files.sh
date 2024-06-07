#!/bin/bash

# Define array of provided names
provided_names=("Distribute Elements Into Two Arrays I - LeetCode" "Count Submatrices with Top-Left Element and Sum Less Than k - LeetCode" "Minimum Operations to Write the Letter Y on a Grid - LeetCode" "Distribute Elements Into Two Arrays II - LeetCode" "Maximum Increasing Triplet Value - LeetCode" "Apple Redistribution into Boxes - LeetCode" "Maximize Happiness of Selected Children - LeetCode" "Shortest Uncommon Substring in an Array - LeetCode" "Maximum Strength of K Disjoint Subarrays - LeetCode" "Match Alphanumerical Pattern in Matrix I-LeetCode" "Find the Sum of Encrypted Integers - LeetCode" "Mark Elements on Array by Performing Queries - LeetCode" "Replace Question Marks in String to Minimize Its Value - LeetCode" "Find the Sum of the Power of All Subsequences - LeetCode" "Existence of a Substring in a String and Its Reverse - LeetCode" "Count Substrings Starting and Ending with Given Character - LeetCode" "Minimum Deletions to Make String K-Special - LeetCode" "Minimum Moves to Pick K Ones - LeetCode" "Find Trending Hashtags - LeetCode" "Make String Anti-palindrome - LeetCode" "Find Bursty Behavior - LeetCode" "Maximum Length Substring With Two Occurrences - LeetCode" "Apply Operations to Make Sum of Array Greater Than or Equal to k - LeetCode" "Most Frequent IDs - LeetCode" "Longest Common Suffix Queries - LeetCode" "Guess the Number Using Bitwise Questions II - LeetCode" "Shortest Subarray With OR at Least KI- LeetCode" "Minimum Levels to Gain More Points - LeetCode" "Shortest Subarray With OR at Least K II - LeetCode" "Find the Sum of Subsequence Powers - LeetCode" "Harshad Number - LeetCode" "Water Bottles II - LeetCode" "Count Alternating Subarrays - LeetCode" "Minimize Manhattan Distances - LeetCode" "Find Trending Hashtags II - LeetCode" "Find Longest Self-Contained Substring - LeetCode" "Longest Strictly Increasing or Strictly Decreasing Subarray - LeetCode" "Lexicographically Smallest String After Operations With Constraint - LeetCode" "Minimum Operations to Make Median of Array Equal to K-LeetCode" "Minimum Cost Walk in Weighted Graph - LeetCode")

# Path to the folder
folder_path="C:/Users/saksh/OneDrive/Desktop/github/Finishing-Leetcode_part-4"

# Source folder to copy from
source_folder="C:/Users/saksh/OneDrive/Desktop/github/Finishing-Leetcode_part-4/3026-"

# Loop through provided names and create folders
for ((i=0; i<${#provided_names[@]}; i++)); do
    name="${provided_names[$i]}"
    # Extracting the name according to the given format
    name_number=$((3069 + $i))
    # Formatting the name as per specifications
    name=$(echo "$name" | sed -e 's/ - LeetCode//' -e 's/ /_/g' -e 's/_-_/-/g' -e "s/^/$name_number-/")
    mkdir "$folder_path/$name"
    cp -r "$source_folder"/* "$folder_path/$name/"
    echo "Created folder: $name"
done