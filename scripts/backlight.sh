#!/bin/bash

# Check the current status of the keyboard backlight
status=$( xset q | grep 'LED mask' | awk '{print $3}' )

# Toggle the backlight status 
if [ "$status" == "00000002" ]; then
  # If the backlight is on, turn it off
  xset -led named 'Scroll Lock'
else
# If the backlight is off, turn it on
  xset led named 'Scroll Lock'
fi
