#!/bin/bash

SERVICE='lollypop'
 
if ps ax | grep -v grep | grep $SERVICE > /dev/null
then
    status=$(playerctl --player=Lollypop status | grep Playing)
    artist=$(playerctl --player=Lollypop metadata | grep artist)
    title=$(playerctl --player=Lollypop metadata | grep title)
    if [[ "$status" = "Playing" ]]; then
        echo "  ${artist:34}:  ${title:34}"
    elif [[ "$status" = "Paused" ]]; then
        echo "  ${artist:34}:  ${title:34}"
    fi
else
    echo ""
fi
