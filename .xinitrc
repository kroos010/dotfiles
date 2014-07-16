#!/bin/sh

## Adding fonts to the path
xset +fp /usr/share/fonts/local
xset +fp /usr/share/fonts/misc
xset +fp $HOME/.fonts
xset fp rehash

## X Settings
xrdb -merge $HOME/.Xresources
wmname LG3D
xsetroot -cursor_name left_ptr &

## Start Daemons
pulseaudio --start &
udiskie &

## Eyecandy
feh --bg-scale $HOME/.config/wallpaper.jpg &
compton &

## Start the BSPWM and the SXHKD
sxhkd &
bspwm
