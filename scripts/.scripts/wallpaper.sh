#!/bin/bash

source ~/.config/user-dirs.dirs

while true; do
	sleep 600
	if [[ $(hostname) == 'archlinux' ]]; then
		nitrogen --save --set-zoom-fill --random $XDG_PICTURES_DIR/Ultrawide
	else
		nitrogen --save --set-zoom-fill  --random $XDG_PICTURES_DIR/Fondos
	fi
done