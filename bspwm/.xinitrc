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
xsetroot -cursor_name left_ptr
xsetroot -solid "#646464"

# Desktop 
# Walpaper
# feh --bg-fill "$(< "${HOME}/.cache/wal/wal")"
nitrogen --restore
# Launch polybar
$HOME/.config/polybar/launch.sh
# Launch compton
$HOME/.config/compton/launch.sh
# Night Light
redshift &

# Java apps fixes
export AWT_TOOLKIT=MToolkit
export _JAVA_AWT_WM_NONREPARENTING=1
export _JAVA_OPTIONS='-Dsun.java2d.opengl=true -Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel swing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'


export PYWAL=true
export XDG_CONFIG_HOME="$HOME/.config" 
export XDG_CURRENT_DESKTOP=GNOME
export DE=gnome
export DESKTOP_SESSION=gnome

exec bspwm