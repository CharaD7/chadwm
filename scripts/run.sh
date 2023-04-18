#!/bin/sh

xrdb merge ~/.Xresources 
xbacklight -set 10 &
feh --bg-fill ~/Pictures/wallpapers/chad.png
# compton &
xset r rate 200 50 &
picom &

~/.config/chadwm/scripts/bar &

while type dwm >/dev/null; do dwm && continue || break; done
