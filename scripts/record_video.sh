#!/bin/bash

# Define the directory where videos will be saved
VIDEO_DIR="$HOME/Videos"

# Create the directory if it doesn't exist
mkdir -p "$VIDEO_DIR"

# Find the highest existing recording number and increment it
NEXT_NUM=$(ls "$VIDEO_DIR" | grep -oE 'recording_([0-9]+)\.mkv' | grep -oE '[0-9]+' | sort -n | tail -n 1)
NEXT_NUM=$((NEXT_NUM + 1))

# Define the output file name
OUTPUT_FILE="$VIDEO_DIR/recording_$NEXT_NUM.mkv"


touch /tmp/.recording_active

# Notify the user that recording has started
notify-send "🎥 Recording Started" "Saving to $OUTPUT_FILE"

# Create a status file to signal that recording is active

# Start recording with wf-recorder
wf-recorder -r 25 -f "$OUTPUT_FILE"

# Remove the status file when recording ends
rm -f /tmp/.recording_active

# Notify the user that recording is complete
notify-send "✅ Recording Saved" "File saved as $OUTPUT_FILE"
