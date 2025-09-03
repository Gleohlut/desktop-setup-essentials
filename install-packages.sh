#!/bin/bash

packages=(
  # Terminal
  alacritty
  wezterm
  
  # Sound
  pipewire
  pipewire-alsa
  pipewire-pulse
  wireplumber
  pavucontrol

  # Clipboard and screenshots
  wl-clipboard
  grim
  slurp
  libnotify

  # Bluetooth
  bluez
  blueman
  
  # Look and feel
  nwg-look
  
  # Fonts
  otf-font-awesome
  ttf-ibm-plex
  nodejs-material-design-icons

  # WM stuff
  uwsm
  waybar
  fuzzel
  swaync
  hyprland
  hyprpaper
  hyprlock
  hyprpolkitagent
  xdg-desktop-portal-hyprland
  xdg-desktop-portal-gtk
  qt5-wayland
  qt6-wayland

  # System stuff
  brightnessctl
  rustup
  flatpak
  network-manager-applet

  # Printing
  cups

  # File system
  yazi
  udiskie
  syncthing

  # Firewall
  ufw
  )

for package in ${packages[@]}; do
  sudo pacman -S --needed --noconfirm ${package}
done
