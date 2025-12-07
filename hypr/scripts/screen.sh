#!/usr/bin/env bash

# Directory where screenshots go
DIR="$HOME/Pictures/Screenshots"

# Make sure the directory exists
mkdir -p "$DIR" || exit 1

# Build a timestamped filename
FILE="$DIR/screenshot-$(date +%Y%m%d-%H%M%S).png"

# Take the screenshot
if grim -o eDP-1 "$FILE"; then
    # On success, send a notification with the screenshot as icon
    notify-send -i "$FILE" "Screenshot saved" "$FILE"
else
    # On failure, send an error notification
    notify-send "Screenshot failed" "grim couldn't save the screenshot."
fi
