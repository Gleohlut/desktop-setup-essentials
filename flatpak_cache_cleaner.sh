#!/bin/bash

# flatpak-cache-cleaner.sh
# Check and clean Flatpak app caches, showing saved space.

# Function to calculate total cache size
calculate_cache_size() {
    find ~/.var/app/ -type d -name cache -exec du -sb {} + | awk '{total += $1} END {print total}'
}

# Calculate initial cache size
initial_size=$(calculate_cache_size)

# Convert to human-readable form
initial_size_hr=$(numfmt --to=iec $initial_size)

echo "Current Flatpak cache size: $initial_size_hr"

# Confirm clean-up
read -p "Do you want to clean all Flatpak caches? (y/n) " answer
if [[ "$answer" != [Yy] ]]; then
    echo "Aborted."
    exit 0
fi

# Clean the caches (FIXED)
find ~/.var/app/ -type d -name cache -exec bash -c 'rm -rf "$0"/*' {} \;

# Calculate new cache size
final_size=$(calculate_cache_size)
final_size_hr=$(numfmt --to=iec $final_size)

# Calculate space saved
saved=$(( initial_size - final_size ))
saved_hr=$(numfmt --to=iec $saved)

echo "-----------------------------"
echo "Flatpak cache cleaned."
echo "Cache before: $initial_size_hr"
echo "Cache after : $final_size_hr"
echo "Space saved : $saved_hr"
echo "-----------------------------"

