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
  
  # Look and feel (GTK)
  nwg-look
  
  # Fonts
  otf-font-awesome
  ttf-ibm-plex
  nodejs-material-design-icons

  # WM stuff
  uwsm
  waybar
  rofi
  swaync
  hyprland
  hyprpaper
  hyprlock
  hyprshot
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
