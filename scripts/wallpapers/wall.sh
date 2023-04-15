#!/bin/bash
# requires feh
# Script to automatically change the wallpaper and lockscreen in spectrwm

# Directory containing the wallpapers
DIR="~/Pictures/wall"

# Command to Select wallpapers at random from the $DIR Directory
WAL=$(ls $DIR/*.{png,jpg} | shuf -n1)

# Set lockscreen wallpaper
cat $WAL > $DIR/current-wallpaper.{png,jpg}

# Set Desktop wallpaper
feh --bg-scale $DIR/current-wallpaper.{png,jpg}
