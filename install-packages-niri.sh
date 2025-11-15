#!/bin/bash

packages=(
  # Shell
  zsh
  zsh-completions
  zsh-autosuggestions
  zsh-syntax-highlighting
  fzf

  # Neovim
  npm python-pip python-pynvim luajit luarocks
  
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
  libnotify

  # Bluetooth
  bluez
  blueman
  
  # Look and feel (GTK)
  nwg-look
  
  # Fonts
  otf-font-awesome
  ttf-ibm-plex
  nodejs-material-design-icons

  # WM stuff
  niri
  sddm
  waybar
  fuzzel
  swaync
  swaybg
  swaylock
  polkit-gnome
  xdg-desktop-portal-gnome
  xdg-desktop-portal-gtk
  xwayland-satellite

  # System stuff
  brightnessctl
  rustup
  flatpak
  
  # Image viewer
  feh
  
  # Printing
  cups cups-filters

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
