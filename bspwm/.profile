#!/bin/sh 

export XDG_CONFIG_HOME="$HOME/.config" 
export XDG_CURRENT_DESKTOP=GNOME
export XDG_MENU_PREFIX=gnome-
export DESKTOP_SESSION=gnome
export DE=gnome

# uniform look between qt and gtk
export QT_QPA_PLATFORMTHEME=gtk2

# Gnome Keyring
export GNOME_KEYRING_CONTROL GNOME_KEYRING_PID GPG_AGENT_INFO SSH_AUTH_SOCK

# Java Applications fixes on "non reparenting WM"
export _JAVA_OPTIONS="-Dsun.java2d.opengl=true -Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel" 
export AWT_TOOLKIT=MToolkit 
export _JAVA_AWT_WM_NONREPARENTING=1