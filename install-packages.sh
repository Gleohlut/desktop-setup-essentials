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
  ttf-font-awesome
  ttf-jetbrains-mono
  ttf-jetbrains-mono-nerd
  noto-fonts
  noto-fonts-cjk
  noto-fonts-extra
  noto-fonts-emoji

  # WM stuff
  waybar
  swaync
  hyprpaper
  hyprlock
  kitty
  rofi
  hyprpolkitagent
  xdg-desktop-portal-gtk
  xdg-desktop-portal-hyprland
  qt5-wayland
  qt6-wayland

  # System stuff
  power-profiles-daemon
  brightnessctl
  uwsm
  flatpak

  # Printing
  cups
  sane
  hplip
  qt5
  python-pyqt5

  # File system
  yazi
  thunar
  udiskie
  syncthing

  # Gaming
  steam
  lutris

  # Browser
  firefox
  )

for package in ${packages[@]}; do
  sudo pacman -S --needed --noconfirm ${package}
done
