#!/bin/bash

# Path to the directory containing wallpapers
WALLPAPER_DIR="/home/alimaaz/Pictures/wallpaper"

# File to keep track of the current wallpaper
CURRENT_WALLPAPER_FILE="$HOME/.current_wallpaper"

# Select a random wallpaper
wall=$(find "$WALLPAPER_DIR" -type f -name "*.jpg" -o -name "*.png" | shuf -n 1)

# Check if a wallpaper is currently set
if [ -f "$CURRENT_WALLPAPER_FILE" ]; then
    current_wall=$(cat "$CURRENT_WALLPAPER_FILE")

    # Unload the current wallpaper
    hyprctl hyprpaper unload "$current_wall"
fi

# Set the new wallpaper
echo "$wall" > "$CURRENT_WALLPAPER_FILE"
hyprctl hyprpaper preload "$wall"
hyprctl hyprpaper wallpaper "VGA-1,$wall"

# Apply the new wallpaper's color scheme
wal -c
wal -i "$wall"

