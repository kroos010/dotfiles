
## X Settings
xrdb -merge $HOME/.Xresources
wmname LG3D
xsetroot -cursor_name left_ptr &

## Start Daemons
pulseaudio --start &

## Eyecandy
feh --bg-scale $HOME/.config/wallpaper.jpg &
compton &

## Start the BSPWM and the SXHKD
sxhkd &
bspwm
