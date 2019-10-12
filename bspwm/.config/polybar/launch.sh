#!/usr/bin/env bash

# Source PyWal color palette
# (wal -i "$(< "${HOME}/.cache/wal/wal")")

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

export Monitor=$(polybar --list-monitors | cut -d":" -f1)
polybar top &
# Launch Polybar, using default config location ~/.config/polybar/config
# Launch polybar bar according to hostname
# if [[ $(hostname) == 'archlinux' ]]; then
#     polybar top &
# elif [[ $(hostname) == 'WafleBook' ]]; then
#     polybar flat &
# else
#     polybar tiled &
# fi

echo "Polybar launched..."