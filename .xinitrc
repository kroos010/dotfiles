#!/bin/bash

[ -f ~/.Xresources ] && xrdb merge ~/.Xresources &

if(xrandr | grep "HDMI1 connected" > /dev/null) then
    # Both screens enabled
    xrandr --output HDMI1 --mode 1920x1080 --pos 0x0 --rotate normal --primary --output LVDS1 --mode 1366x768 --pos 1920x312 --rotate normal --output VGA2 --off --output DP1 --off
fi

$TERMINAL=xterm

pulseaudio --start &
#[ ! -s ~/.config/mpd/pid ] && mpd ~/.config/mpd/mpd.conf &
#xcompmgr -c & # xcompmgr is slow :(
xsetroot -cursor_name left_ptr &
nitrogen --restore &
udiskie &
btsync --config ~/.config/btsync/btsync.conf &

exec i3
