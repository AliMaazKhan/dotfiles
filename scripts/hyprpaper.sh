#!/bin/bash

# Count the number of jpg files in the directory
WALLPAPER_DIR=~/Pictures/wallpaper
WALLPAPER_COUNT=$(ls $WALLPAPER_DIR | wc -l)

# Generate a random number within the range of available wallpapers
RANDOM_WALL=$((RANDOM % WALLPAPER_COUNT))

# Apply the selected wallpaper
echo $RANDOM_WALL
hyprctl hyprpaper preload "$WALLPAPER_DIR/wall$RANDOM_WALL.jpg"
hyprctl hyprpaper wallpaper "VGA-1,$WALLPAPER_DIR/wall$RANDOM_WALL.jpg"

for WALLPAPER in $WALLPAPER_DIR; do
    if [[ "$(basename "$WALLPAPER")" != "$SELECTED_WALLPAPER" ]]; then
        hyprctl hyprpaper unload "$WALLPAPER"
    fi
done

sleep 5
