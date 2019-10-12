#!/bin/bash

bspc rule -a \* -o state=floating && gnome-terminal -- sh -c 'trizen -Syu --noconfirm; dunstify -i terminal "Arch Linux Updates Indicator " "System has been updated"'