#!/bin/bash

## Merge the XRESOURCES
[ -f ~/.Xresources ] && xrdb merge ~/.Xresources &

## Set the screens :)

## Startup the applications and daemons
pulseaudio --start &

## Some eye-candy
nitrogen --restore &
compton -cCGfF -o 0.38 -O 200 -I 200 -t 0 -l 0 -r 3 -D2 -m 0.88 &

exec i3
