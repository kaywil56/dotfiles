#!/bin/bash

wallpaper = ~/.config/mango/background.png



# Start status bar
waybar &

# Set wallpaper
swaybg -i $wallpaper &

# Start notification daemon
mako &

# Clipboard manager
wl-paste --watch cliphist store &

# Night light
wlsunset -l 39.9 -L 116.3 &
