#!/usr/bin/env bash

DIR="$HOME/Pictures/Screenshots"
mkdir -p "$DIR" || exit 1

FILE="$DIR/screenshot-window-$(date +%Y%m%d-%H%M%S).png"

# Get active window geometry from Hyprland
GEO="$(hyprctl activewindow -j 2>/dev/null | jq -r '"\(.at[0]),\(.at[1]) \(.size[0])x\(.size[1])"')"

# If nothing returned, bail
if [ -z "$GEO" ] || [ "$GEO" = "null,null 0x0" ]; then
    notify-send "Window screenshot failed" "No active window geometry."
    exit 1
fi

# Take the screenshot of that window region
if grim -g "$GEO" "$FILE"; then
    notify-send -i "$FILE" "Window screenshot saved" "$FILE"
else
    notify-send "Window screenshot failed" "grim couldn't save the screenshot."
fi
