#!/usr/bin/env bash
# Wallpaper daemon
swww init &
swww img ~/wallpapers/wallpaper.png

# Networkmanager applet
nm-applet --indicator &

# Statusbar
waybar &

# Notif-manager
mako

# Bluetooth manager
blueman-applet

# Audio manager
pavucontrol
