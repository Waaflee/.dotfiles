#!/usr/bin/env bash

# source configuration or use default values
OPTIONS="\n\n\n"
LAUNCHER="rofi -theme power -dmenu -i -selected-row 1"

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
      )
        systemctl reboot
        ;;
      )
        systemctl poweroff
        ;;
      )
      	systemctl suspend
        ;;
      )
        ~/.scripts/lock_screen.sh
        ;;
      *)
        ;;
    esac
fi
