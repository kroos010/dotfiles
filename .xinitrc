[[ -f ~/.Xresources ]] && xrdb merge ~/.Xresources &
[ ! -s ~/.config/mpd/pid ] && mpd ~/.config/mpd/mpd.conf &

nitrogen --restore &
xsetroot -cursor_name left_ptr &
unclutter -root -reset -noevents &
udiskue &

exec i3
