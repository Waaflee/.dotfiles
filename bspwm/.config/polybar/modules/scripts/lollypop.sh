#!/bin/bash

SERVICE='lollypop'
 
if ps ax | grep -v grep | grep $SERVICE > /dev/null
then
    status=$(playerctl --player=Lollypop status 2> /dev/null | grep Playing)
    artist=$(playerctl --player=Lollypop metadata 2> /dev/null | grep artist)
    title=$(playerctl --player=Lollypop metadata  2> /dev/null | grep title)
    if [[ "$status" = "Playing" ]]; then
        if [[ "${artist:34}" != "" ]]; then
            echo "  ${artist:34}:  ${title:34}"
        fi
    elif [[ "$status" = "Paused" ]]; then
        if [[ "${artist:34}" != "" ]]; then
            echo "  ${artist:34}:  ${title:34}"
        fi
    fi
else
    echo ""
fi
