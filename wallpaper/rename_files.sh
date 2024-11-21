#!/bin/bash

# Change this to your directory path if needed
directory="."

# List of files to rename
files=(
    'AppBreweryWallpaper 1.jpg'
    'AppBreweryWallpaper 7.jpg'
    'AppBreweryWallpaper 2.jpg'
    'AppBreweryWallpaper 8.jpg'
    'AppBreweryWallpaper 3.jpg'
    'AppBreweryWallpaper 9.jpg'
    'AppBreweryWallpaper 4.jpg'
    'AppBreweryWallpaper.jpg'
    'AppBreweryWallpaper 5.jpg'
    'LAB Wallpaper.jpg'
    'AppBreweryWallpaper 6.jpg'
)

# Initialize counter
i=6

for file in "${files[@]}"; do
    if [ -f "$directory/$file" ]; then
        # Construct new filename
        new_name="wall$i.jpg"

        # Rename the file
        mv "$directory/$file" "$directory/$new_name"

        # Increment counter
        i=$((i + 1))
    else
        echo "File $file not found in $directory"
    fi
done

