#!/bin/sh

EWW=`which eww`

## Run eww daemon if not running already
if [[ ! `pidof eww` ]]; then
	${EWW} daemon
	sleep 1
fi

xrdb merge ~/.Xresources
xrandr --output HDMI-0 --auto --left-of eDP-1-1
xbacklight -set 10 &
# feh --bg-scale ~/Pictures/wallpapers/chad.png
# compton &
xset r rate 200 50 &
picom &

wal &
fetch &
bubbly keystrokes &

~/.config/chadwm/scripts/bar &

while type dwm >/dev/null; do dwm && continue || break; done
