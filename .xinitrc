[ -f ~/.Xresources ] && xrdb merge ~/.Xresources &

xsetroot -cursor_name left_ptr &
nitrogen --restore &

exec i3
