#!/bin/bash

# Symbols for play and pause
PLAY_SYMBOL="▶"
PAUSE_SYMBOL="⏸"

# Check if the recording status file exists
if [ -f /tmp/.recording_active ]; then
    echo "{\"text\": \"$PAUSE_SYMBOL\", \"tooltip\": \"Recording in progress\"}"
else
    echo "{\"text\": \"$PLAY_SYMBOL\", \"tooltip\": \"No recording in progress\"}"
fi

