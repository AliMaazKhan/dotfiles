#!/bin/bash

status=$(playerctl status)
if [ "$status" = "Playing" ]; then
  icon=""  # Pause icon
else
  icon=""  # Play icon
fi

# Display icon followed by song title and artist
echo -e "$icon $(playerctl metadata --format '{{ title }} - {{ artist }}')"

