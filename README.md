# Dotfiles

The title says pretty much all there is to it.

Each folder it's meant to be independent of the others and manages isolated packages/setups

## bspwm

Awesome tiling wm, the bspwm folder has everything needed to run the session. This includes:

  - bspwm: Window Manager.
  - sxhkd: Keybindings.
  - rofi: Application Launcher.
  - compton: Compositor.
  - pywal: Wallpaper based color palette generation tool.
  - nitrogen: Background setter.
  - polybar: Bar.
  - dunst: Notification daemon.
  - redshift: Night light filer.
  - scrot: Screenshot tool.
  - Qt and Gtk uniform appearance
  
Installed packages are: 
```
bspwm-git sxhkd-git polybar-git compton-tryone-git kitty 
python-pywal feh playerctl rofi rofi-clacl siji-git scrot 
numlockx xorg-xsetroot dunst xorg-xinit gnome-terminal-transparency
qt5-styleplugins nitrogen
``` 
Polybar Icons:
```
ttf-font-awesome 
```
Fonts:
```
ttf-fira-code ttf-dejavu
```
Gtk and Icon theme:
```
arc-gtk-theme paper-icon-theme-git
```


For Redshift to work it's necessary to add the following lines to `/etc/geoclue/geoclue.conf`
```
[redshift]
allowed=true
system=false
users=
```

## trizen

Cool AUR helper

```
trizen
```

## zsh

Terrific shell

This config includes a lot of things, the .zshrc it's pretty well documented.
```
zsh oh-my-zsh-git micro-bin bat
```
