
#!/bin/bash

# Path to input and output
COLOR_FILE="$HOME/.cache/wal/colors"     # or wherever your 'colors' file is
OUTPUT_FILE="$HOME/.config/hypr/colors.conf"

# Check if color file exists
if [ ! -f "$COLOR_FILE" ]; then
    echo "Error: $COLOR_FILE not found!"
    exit 1
fi

# Clear or create the output file
> "$OUTPUT_FILE"

# Counter for color index
index=0

# Read each line in the file
while IFS= read -r color; do
    # Skip empty lines or lines that don't look like hex codes
    if [[ "$color" =~ ^#[0-9a-fA-F]{6}$ ]]; then
        printf "\$color%d=%s\n" "$index" "$color" >> "$OUTPUT_FILE"
        ((index++))
    fi
done < "$COLOR_FILE"

echo "Colors written to $OUTPUT_FILE"

