#!/bin/sh

xrdb merge ~/.Xresources 
xbacklight -set 10 &
compton &
xset r rate 200 50 &
picom &
bubbles &
eww open eww &

bar &
fehbg &

while type dwm >/dev/null; do dwm && continue || break; done
