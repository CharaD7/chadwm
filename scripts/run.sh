#!/bin/sh

userName=$(echo $USER)

xrdb merge ~/.Xresources
xrandr --output HDMI-0 --auto --left-of eDP-1-1

xpad -h &

chown $userName:$userName /sys/class/backlight/intel_backlight/brightness
# compton &
xset r rate 200 50 &
picom &

wal &

~/.config/chadwm/scripts/bar &

while type chadwm >/dev/null; do chadwm && continue || break; done
