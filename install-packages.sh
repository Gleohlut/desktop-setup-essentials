#!/bin/bash

packages=(
  # Sound
  pipewire
  pipewire-alsa
  pipewire-pulse
  wireplumber
  helvum
  pavucontrol

  # Clipboard and screenshots
  wl-clipboard
  grim
  slurp
  swappy

  # Fonts
  otf-font-awesome
  noto-fonts
  noto-fonts-cjk
  noto-fonts-extra
  noto-fonts-emoji

  # WM stuff
  waybar
  swaync
  swaybg
  fuzzel
  polkit-gnome

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
