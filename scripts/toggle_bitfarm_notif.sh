#!/bin/sh
# Toggle the BitFarm notification widget in eww
if ! pgrep -x eww >/dev/null 2>&1; then
    eww daemon &
    sleep 0.5
fi

eww open --toggle bitfarm-notifications
