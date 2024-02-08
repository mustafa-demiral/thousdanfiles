#!/bin/bash

# Check if correct number of arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <directory> <number_of_files>"
    exit 1
fi

# Extract arguments
directory="$1"
num_files="$2"

# Check if directory exists, if not, create it
if [ ! -d "$directory" ]; then
    mkdir -p "$directory"
fi

# Loop to create files
for ((i = 1; i <= num_files; i++)); do
    touch "$directory/file$i.txt"
    echo "File $i created."
done

echo "$num_files files created in $directory."
