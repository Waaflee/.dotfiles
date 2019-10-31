#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# Keyboard
sxhkd &
# Layout
setxkbmap -layout latam
# Ç Character
xmodmap -e "keycode 54 = c C ccedilla Ccedilla ccedilla Ccedilla"
# NumLock on boot
numlockx &
# Notifications
dunst&

# Mouse & Pointer
xsetroot -solid "#646464"
xsetroot -cursor_name left_ptr

# Desktop 
# Walpaper
nitrogen --restore
$HOME/.scripts/wallpaper.sh &
# Launch compton
$HOME/.config/compton/launch.sh
# Night Light
redshift &

# XDG Dirs
xdg-user-dirs-gtk-update &

# Gnome Keyring
eval $(gnome-keyring-daemon --start --components=pkcs11,secrets,ssh,gpg)
export GNOME_KEYRING_CONTROL GNOME_KEYRING_PID GPG_AGENT_INFO SSH_AUTH_SOCK
export XDG_CONFIG_HOME="$HOME/.config"

exec bspwm
