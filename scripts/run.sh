#!/bin/sh

xrdb merge ~/.Xresources 
xbacklight -set 10 &
compton &
xset r rate 200 50 &
picom &
bubbles &
eww open eww &

~/.config/chadwm/scripts/bar.sh &
~/.config/chadwm/scripts/fehbg.sh &
~/.config/chadwm/scripts/bubbles.sh &
# bubbles &
while type dwm >/dev/null; do dwm && continue || break; done
