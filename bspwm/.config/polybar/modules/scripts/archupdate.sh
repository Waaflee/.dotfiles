#!/bin/sh

if ! updates=$(checkupdates 2> /dev/null | wc -l ); then
    updates=0
fi

if [ "$updates" -gt 0 ]; then
    echo "   $updates"
    dunstify -i terminal "Actualizaciones Disponibles" "$(checkupdates | head -n 5)"
else
    echo ""
fi