#!/bin/bash

path="/hdfs/data/data1"
name_of_directory="data1"
filename_excel="daily_market_price.xlsx"
source_dir="/local/data/market"
target_dir="$path/$name_of_directory"

# Check if the directory exists
if [ -d "$target_dir" ]; then
    echo "The $name_of_directory Directory Exists!"

    # Check if the file exists in the source directory
    if [ -f "$source_dir/$filename_excel" ]; then
        cp "$source_dir/$filename_excel" "$target_dir/"
        echo "File $filename_excel copied to $target_dir"

        # Create a log file
        log_file="$target_dir/move_log.txt"
        echo "File Moved Successfully" >> "$log_file"
    else
        echo "File $filename_excel does not exist in $source_dir"
    fi
else
    echo "$name_of_directory Directory Not Exists!"
    mkdir -p "$target_dir"
    echo "Created $name_of_directory Directory"
fi
