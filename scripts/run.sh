#!/bin/sh

userName="$USER"

xrdb merge ~/.config/st/xresources
# xrdb merge ~/.Xresources

# use `xrandr --query` to view a list of available displays`
xrandr --output HDMI-1-1 --auto --left-of eDP-1
xrandr --output eDP-1 --mode 1920x1080
xrandr --output HDMI-0 --auto --right-of eDP-1-1

# enable mouse clicks
xinput set-prop 11 "libinput Tapping Enabled" 1

xpad -h &

chown "$userName":"$userName" /sys/class/backlight/intel_backlight/brightness
# compton &
# xset r rate 200 50 &
wal &
picom &

dunst & # Add notification daemon to startup
flameshot & # A screen capture utility
eww daemon & # Eww widget daemon

~/.config/chadwm/scripts/bar &

# nvidia driver restore
~/.local/bin/restore-nvidia.sh &
dwm 2> ~/dwm.log

while type dwm >/dev/null; do dwm && continue || break; done
