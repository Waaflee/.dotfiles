#!/bin/bash

source ~/.config/user-dirs.dirs

while true; do
	sleep 300
	if [[ $(hostname) == 'archlinux' ]]; then
		nitrogen --set-zoom-fill  --random $XDG_PICTURES_DIR/Ultrawide
	else
		nitrogen --set-zoom-fill  --random $XDG_PICTURES_DIR/Fondos
	fi
done