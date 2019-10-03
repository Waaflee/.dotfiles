# Dotfiles

The title says pretty much all there is to it.

Each folder it's meant to be independent of the others and manages isolated packages/setups


## bspwm

Awesome tiling wm, the bspwm folder has everything needed to run the session. This includes:

  - bspwm: Window Manager.
  - compton: Compositor.
  - sxhkd: Keybindings.
  - rofi: Application Launcher.
  - nitrogen: Background setter.
  - polybar: Bar.
  - dunst: Notification daemon.
  - redshift: Night light filer.
  - scrot: Screenshot tool.
  
Installed packages are: 
```
bspwm-git sxhkd-git polybar-git compton-tryone-git kitty 
playerctl rofi-git rofi-calc scrot numlockx xorg-xsetroot 
dunst xorg-xinit gnome-terminal-transparency nitrogen
``` 
Polybar Icons:
```
ttf-font-awesome 
```
Fonts:
```
ttf-fira-code ttf-dejavu ttf-liberation ttf-google-sans
```
Gtk and Icon theme:
```
arc-gtk-theme paper-icon-theme-git 
```
VLC skin `vlc-arc-dark-git`


For Redshift to work it's necessary to add the following lines to `/etc/geoclue/geoclue.conf`
```
[redshift]
allowed=true
system=false
users=
```
To get Chromiun to use gnome-keyring these packages are also required: `gnome-keyring libsecret`

Keyring management can be done with `seahorse`

## trizen

Cool AUR helper

```
trizen
```

## zsh

Terrific shell

The .zshrc it's pretty well documented.
```
zsh oh-my-zsh-git micro-bin bat
```
