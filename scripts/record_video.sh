#!/bin/bash

# Define the directory where videos will be saved
VIDEO_DIR="$HOME/Videos"

# Create the directory if it doesn't exist

# Find the highest existing number and increment it
NEXT_NUM=$(ls "$VIDEO_DIR" | grep -oE '[0-9]+' | sort -n | tail -n 1)
NEXT_NUM=$((NEXT_NUM + 1))

# Define the output file name
OUTPUT_FILE="$VIDEO_DIR/recording_$NEXT_NUM.mkv"

notify-send "Recording Started"
# Start recording with wf-recorder
wf-recorder -r 25 -f "$OUTPUT_FILE"

# Notify the user (optional)
notify-send "Recording saved as $OUTPUT_FILE"

