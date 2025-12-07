#!/usr/bin/env bash

# Directory where screenshots go
DIR="$HOME/Pictures/Screenshots"

# Make sure the directory exists
mkdir -p "$DIR" || exit 1

# Build a timestamped filename
FILE="$DIR/screenshot-area-$(date +%Y%m%d-%H%M%S).png"

# Let the user select an area; slurp prints geometry like "x,y widthxheight"
GEOM="$(slurp)"

# If user cancels slurp (Esc, right-click, etc.), it prints nothing → exit quietly
[ -z "$GEOM" ] && exit 0

# Take the screenshot of the selected region
if grim -g "$GEOM" "$FILE"; then
    # On success, send a notification with the screenshot as icon
    notify-send -i "$FILE" "Area screenshot saved" "$FILE"
else
    # On failure, send an error notification
    notify-send "Area screenshot failed" "grim couldn't save the screenshot."
fi
