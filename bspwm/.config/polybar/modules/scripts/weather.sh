#!/bin/sh
# Weather report: Mendoza, Argentina

#      \   /     Sunny
#       .-.      18 °C          
#    ― (   ) ―   ↖ 22 km/h      
#       `-’      10 km          
#      /   \     0.7 mm
# c    Weather condition,
# C    Weather condition textual name,
# h    Humidity,
# t    Temperature,
# w    Wind,
# l    Location,
# m    Moonphase 🌑🌒🌓🌔🌕🌖🌗🌘,
# M    Moonday,
# p    precipitation (mm),
# o    Probability of Precipitation,
# P    pressure (hPa),
DATA=""
for i in l C t h o; do
    DATA="$DATA"$'\n'"$(curl "wttr.in/?format=%$i" 2> /dev/null)"
    echo "$DATA"
done
dunstify -i info Weather "$DATA"