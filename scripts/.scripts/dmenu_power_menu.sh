#!/usr/bin/env bash

# source configuration or use default values
OPTIONS="\n\n\n"
OPTIONS="reboot\npoweroff\nsuspend\nlogout"
#LAUNCHER="rofi -theme power -dmenu -i -selected-row 1"
LAUNCHER="dmenu -b"
LAUNCHER="dmenu -o 0.75 -x 1080 -y 445 -w 400 -h 35 -p @wafle: -l 4 -dim 0.5"

# Show exit wm option if exit command is provided as an argument
if [ ${#1} -gt 0 ]; then
  OPTIONS="Exit window manager\n$OPTIONS"
fi

option=`echo -e $OPTIONS | $LAUNCHER | awk '{print $1}' | tr -d '\r\n'`
if [ ${#option} -gt 0 ]
then
    case $option in
      Exit)
        eval $1
        ;;
      reboot)
        systemctl reboot
        ;;
      poweroff)
        systemctl poweroff
        ;;
      suspend)
        sleep 0.25
      	systemctl suspend
        ;;
      logout)
        ~/.scripts/lock_screen.sh
        ;;
      *)
        ;;
    esac
fi
