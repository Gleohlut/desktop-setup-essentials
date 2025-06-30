#!/bin/bash

packages=(
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

  # Fonts
  otf-font-awesome
  noto-fonts
  noto-fonts-cjk
  noto-fonts-extra
  noto-fonts-emoji
  ttf-ibm-plex

  # WM stuff
  waybar
  swaync
  hyprpaper
  fuzzel
  hyprpolkitagent
  xdg-desktop-portal-hyprland
  xdg-desktop-portal-gtk
  hyprland
  qt5-wayland
  qt6-wayland

  # System stuff
  brightnessctl
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
