#!/usr/bin/env bash

# OPTIONS="Reboot\nShut-down\nSuspend\nLock"
OPTIONS="\n\n\n"
# OPTIONS="\n\n鈴\n"
# source configuration or use default values
  # LAUNCHER="rofi -location 0 -width 15 -lines 4 -dmenu -i -p power -show-icons"
  LAUNCHER="rofi -theme power -dmenu -i -selected-row 1"
  USE_LOCKER="true"
  LOCKER="i3lock-fancy -t "btw i use arch" -f Source-Code-Pro"


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
        # i3lock-fancy -t "btw i use arch" -f Source-Code-Pro
        ~/.scripts/lock_screen.sh
        ;;
      *)
        ;;
    esac
fi
