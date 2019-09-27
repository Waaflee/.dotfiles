#!/bin/bash

# Terminate already running compton instances
killall -q compton

# Wait until the processes have been shut down
while pgrep -u $UID -x compton >/dev/null; do sleep 1; done

# Launch compton in background, using default config location ~/.config/compton/compton.conf
if [[ $(hostname) == 'archlinux' ]]; then
    compton -b --config $HOME/.config/compton/compton.conf
elif [[ $(hostname) == 'WafleBook' ]]; then
    compton -b --config $HOME/.config/compton/compton.conf --no-dock-shadow --blur-background-exclude "window_type = 'dock'" --opacity-rule "class_g = 'Polybar'"
else
    compton -b --config $HOME/.config/compton/compton.conf
fi

echo "Compton launched..."
