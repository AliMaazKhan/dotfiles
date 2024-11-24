
#!/bin/bash

# Directory containing wallpapers
WALLPAPER_DIR="/home/alimaaz/Pictures/wallpaper"

# File to keep track of the current wallpaper
CURRENT_WALLPAPER_FILE="$HOME/.current_wallpaper"

# Function to show the wallpaper preview with swayimg
show_preview() {
    local wallpaper="$1"
    # If swayimg is already running, kill it
    pkill -f swayimg 2>/dev/null
    # Launch swayimg with the selected wallpaper and keep it open
    swayimg "$wallpaper" &
}


# Use fzf to select wallpaper with preview
selected_wallpaper=$(find "$WALLPAPER_DIR" -type f -name "*.jpg" -o -name "*.png" | \
fzf --preview 'swayimg {} & sleep 2')

# Close the preview window after selection
pkill -f swayimg

# Check if a selection was made
if [ -z "$selected_wallpaper" ]; then
    echo "No wallpaper selected. Exiting..."
    exit 1
fi

# Unload the previous wallpaper if it exists
if [ -f "$CURRENT_WALLPAPER_FILE" ]; then
    current_wall=$(cat "$CURRENT_WALLPAPER_FILE")
    hyprctl hyprpaper unload "$current_wall"
fi

# Set the new wallpaper
echo "$selected_wallpaper" > "$CURRENT_WALLPAPER_FILE"
hyprctl hyprpaper preload "$selected_wallpaper"
hyprctl hyprpaper wallpaper "VGA-1,$selected_wallpaper"

# Apply the new wallpaper's color scheme
wal -c
wal -i "$selected_wallpaper"

echo "Wallpaper changed to $selected_wallpaper"

killall waybar && waybar
/home/alimaaz/dotfiles/scripts/wofi_style.sh
