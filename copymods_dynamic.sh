#!/bin/bash

# Define the source base directory and target directory
BASE_DIR="/home/pzuser/Steam/steamapps/workshop/content/108600"
TARGET_DIR="/home/pzuser/Zomboid/mods"

# Ensure the target directory exists
mkdir -p "$TARGET_DIR"

# Find directories in the base directory and loop through each
find "$BASE_DIR" -mindepth 1 -maxdepth 1 -type d | while read dir; do
    # Define the specific mod folder inside each found directory
    MOD_DIR="$dir/mods"

    # Check if the 'mods' directory exists in the found directory
    if [ -d "$MOD_DIR" ]; then
        echo "Copying from $MOD_DIR to $TARGET_DIR"
        # Copy the contents of the mods directory to the target directory
        cp -r "$MOD_DIR/." "$TARGET_DIR"
    else
        echo "No 'mods' directory found in $dir"
    fi
done

echo "Copy operation complete."
