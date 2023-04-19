#!/bin/sh

xrdb merge ~/.Xresources 
xrandr --output HDMI-0 --auto --left-of eDP-1-1
xbacklight -set 10 &
feh --bg-fill ~/Pictures/wallpapers/chad.png
# compton &
xset r rate 200 50 &
picom &

fetch &
bubbles &
eww open eww &

~/.config/chadwm/scripts/bar &

while type dwm >/dev/null; do dwm && continue || break; done
