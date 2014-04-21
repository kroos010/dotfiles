## Some settings i like
LOCKER=xlock
LOCKTIME=10
WALLPAPER=$HOME/.config/wallpaper.jpg

## Adding fonts to the path
xset +fp /usr/share/fonts/local
xset +fp /usr/share/fonts/misc
xset +fp $HOME/.fonts
xset fp rehash

## X settings
xrdb -merge $HOME/.Xresources

## Set the windowmanager name
wmname LG3D

## Set cursor
xsetroot -cursor_name left_ptr &

## Eyecandy
feh --bg-scale $WALLPAPER &
compton --config $HOME/.config/compton/compton.conf --vsync opengl &

## Start the daemons
udiskie &
thunar --daemon &
pulseaudio --start &
sxhkd &
xautolock -locker $LOCKER -time $LOCKTIME &

## Start the BSP Window Manager
exec bspwm

#exec i3
#exec openbox-session
