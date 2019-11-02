#!/bin/bash
source ~/.config/user-dirs.dirs
ffmpeg -f x11grab -video_size $(xdpyinfo | awk '/dimensions/{print $2}') -framerate 25 -i $DISPLAY -c:v h264_nvenc "$XDG_VIDEOS_DIR/$(date +%F_%R:%S)_screen_record.mkv"
dunstify -i info "Captura de Escritorio Guardada" "$XDG_VIDEOS_DIR/$(date +%F_%R:%S)_screen_record.mkv"