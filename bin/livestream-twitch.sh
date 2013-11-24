#!/bin/bash

# This is just a quick (not fully working) livestream script.
# TODO: Get the screen res (ask user)

DOTF_TWITCHKEY="live_20008920_tUkzT50Oxyauet1DHniqnvXVOa9pt6"
SIZE="1366x768"
FRAMERATE="30"

ffmpeg \
    -f x11grab -s "$SIZE" -r "$FRAMERATE" -i :0.0 \
    -vb "$BITRATE" -pix_fmt yuv420p -vcodec libx264 \
    -preset ultrafast -b:v 1024k -b:a 128k -threads 0 \
    -f flv "rtmp://live.justin.tv/app/$DOTF_TWITCHKEY"