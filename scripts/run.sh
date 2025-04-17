#!/bin/sh

userName=$(echo $USER)

xrdb merge ~/st/xresources

# use `xrandr --query` to view a list of available displays`
# xrandr --output HDMI-1-0 --auto --left-of eDP-1
# Set the refresh rate of the primary display to 60Hz
xrandr --output $(xrandr --query | grep " connected" | awk '{print $1}') --mode $(xrandr | grep -A1 " connected" | tail -n1 | awk '{print $1}') --rate 60

xpad -h &

chown $userName:$userName /sys/class/backlight/intel_backlight/brightness
# compton &
xset r rate 200 50 &
picom &

xrdb merge ~/.Xresources

~/.config/chadwm/scripts/wal &
dunst & # Add notification daemon to startup
flameshot & # A screen capture utility

~/.config/chadwm/scripts/bar &
dwm 2> ~/dwm.log

while type dwm >/dev/null; do dwm && continue || break; done
