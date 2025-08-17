#!/bin/bash

packages=(
  # Terminal
  alacritty
  
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
  noto-fonts
  noto-fonts-cjk
  noto-fonts-extra
  noto-fonts-emoji
  ttf-ibm-plex
  nodejs-material-design-icons

  # WM stuff
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
  hplip
  python-pyqt5

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
