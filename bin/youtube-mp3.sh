#!/bin/bash

youtube-dl \
    -x \
    --audio-format mp3 \
    --audio-quality 0 \
    -o "%(title)s.%(ext)s"
    $1
