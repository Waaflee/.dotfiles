#!/bin/bash

source ~/.config/i3lock/i3lockrc

#export $(cat ~/.config/nitrogen/bg-saved.cfg | grep file)
#cp $file ~/.cache/$(basename $file)
#mogrify -blur 0x$blur ~/.cache/$(basename $file)
#	   --image ~/.cache/$(basename $file) \

blank=33000000
khl="$(~/.scripts/colorctl.sh -o -$delta -h ${rc:0:6})${rc: -2}"
bshl="$(~/.scripts/colorctl.sh -o +$delta -h ${rc:0:6})${rc: -2}"

i3lock --blur $blur \
	   --verifsize=16 \
	   --veriftext="..." \
	   --radius $radius \
	   --ring-width $width \
	   --indicator --clock --timestr="%H:%M" \
	   --linecolor=$blank \
	   --insidecolor=$ic --ringcolor=$rc \
	   --datecolor=$tc --timecolor=$tc \
	   --separatorcolor=$rc --keyhlcolor=${khl#\#} \
	   --bshlcolor=${bshl#\#} \
	   --verifcolor=$tc --wrongcolor=$tc \
	   --ringvercolor=${rvc:-$rc} --ringwrongcolor=$wc \
	   --insidevercolor=$ic --insidewrongcolor=$ic \
