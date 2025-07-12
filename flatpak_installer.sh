#!/bin/bash

# Check if Flatpak is installed
if ! command -v flatpak &> /dev/null; then
    echo "Flatpak is not installed. Please install it first."
    exit 1
fi

# Add Flathub repository (user mode)
flatpak remote-add --if-not-exists --user flathub https://flathub.org/repo/flathub.flatpakrepo

# List of applications to install
# Add or remove applications as needed
applications=(
    "com.github.tchx84.Flatseal" # Flatseal. Permissions.
    "org.mozilla.firefox" # Firefox
    "com.brave.Browser" # Brave
    "app.zen_browser.zen" # Zen
    "org.videolan.VLC" # VLC
    "org.libreoffice.LibreOffice" # Libre Office
    "com.discordapp.Discord" # Discord
    "md.obsidian.Obsidian" # Obsidian
    "org.qbittorrent.qBittorrent" # Torrent
    "com.spotify.Client" # Spotify
)

# Install all applications without prompts
echo "Installing applications..."
for app in "${applications[@]}"; do
    echo "Installing $app..."
    flatpak install --user --noninteractive -y flathub "$app"
done

echo "Installation complete!"
