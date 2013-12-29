[ -f ~/.Xresources ] && xrdb merge ~/.Xresources &

if(xrandr | grep "HDMI1 connected 1920x1080" > /dev/null) then
    xrandr --output HDMI1 --mode 1920x1080 --pos 0x0 --rotate normal --primary --output LVDS1 --mode 1366x768 --pos 1920x312 --rotate normal --output VGA2 --off --output DP1 --off
fi

xsetroot -cursor_name left_ptr &
nitrogen --restore &

exec i3
