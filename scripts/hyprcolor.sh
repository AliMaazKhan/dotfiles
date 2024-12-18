
#!/bin/bash

# Paths to input and output files
CSS_FILE="$HOME/.cache/wal/colors.css"
CONF_FILE="$HOME/.config/colors.conf"
HYPRLAND_CONF="$HOME/.config/hypr/hyprland.conf"

# Ensure the CSS file exists
if [ ! -f "$CSS_FILE" ]; then
    echo "Error: $CSS_FILE not found!"
    exit 1
fi

# Create or clear the colors.conf file
> "$CONF_FILE"

# Extract color variables from the CSS file
while read -r line; do
    # Match lines that define CSS variables
    if [[ $line =~ --(color[0-9]+):\ ([#a-fA-F0-9]+)\; ]]; then
        color_name="${BASH_REMATCH[1]}"
        color_value="${BASH_REMATCH[2]}"
        
        # Format the color variable as $color0, $color1, etc.
        echo "\$$color_name=$color_value" >> "$CONF_FILE"
    fi
done < "$CSS_FILE"

echo "Colors have been written to $CONF_FILE"

# Extract the hex values for color10 and color15
active_border_color=$(grep "^\$color10=" "$CONF_FILE" | cut -d'=' -f2 | tr -d '#')
inactive_border_color=$(grep "^\$color15=" "$CONF_FILE" | cut -d'=' -f2 | tr -d '#')

# Verify that colors were found
if [ -z "$active_border_color" ] || [ -z "$inactive_border_color" ]; then
    echo "Error: Could not find color10 or color15 in $CONF_FILE"
    exit 1
fi

# Modify only the active and inactive border colors in hyprland.conf
if [ -f "$HYPRLAND_CONF" ]; then
    # Use sed to directly change the colors in the existing Hyprland.conf file
    sed -i "s/\(col.active_border = rgba(\)[0-9a-fA-F]\{8\}\()\)/\1${active_border_color}ee\2/" "$HYPRLAND_CONF"
    sed -i "s/\(col.inactive_border = rgba(\)[0-9a-fA-F]\{8\}\()\)/\1${inactive_border_color}ee\2/" "$HYPRLAND_CONF"
    echo "Updated col.active_border and col.inactive_border in $HYPRLAND_CONF"
else
    echo "Error: $HYPRLAND_CONF not found!"
    exit 1
fi

