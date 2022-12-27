#!/bin/sh

# Resolution config
# udiskie icon
udiskie -t &

#start sxhkd to replace Qtile native key-bindings
# sxhkd -c ~/.config/qtile/sxhkd/sxhkdrc &
#
# 3 monitores en linea, laptop izquierda
xrandr --output eDP1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP1 --off --output HDMI1 --off --output VIRTUAL1 --off --output HDMI-1-0 --mode 1920x1080 --pos 1920x0 --rotate normal --output DP-1-0 --mode 1920x1080 --pos 3840x0 --rotate normal --output DP-1-1 --off
───────┴────────────────────────────────────────────────────────────────────

# laptom abajo monitor arriba y derecha
# xrandr --output eDP1 --primary --mode 1920x1080 --pos 0x1080 --rotate normal --output DP1 --off --output HDMI1 --off --output VIRTUAL1 --off --output HDMI-1-0 --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1-0 --mode 1920x1080 --pos 1920x0 --rotate normal --output DP-1-1 --off

# applet icon
nm-applet &

# systray volume icon
volumeicon &

# systray battery icon
cbatticon -u 5 -i notification &

# Wallpapers
nitrogen --restore &

# Dropbox
dropbox &

# Picom
picom --config $HOME/.config/qtile/scripts/picom.conf &

# Bluetooth
blueberry-tray &

# Mouse Settings
