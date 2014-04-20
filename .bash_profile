#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Settings for the panel
export PANEL_FIFO="/tmp/panel-fifo"
export PANEL_HEIGHT=18

# Add scripts to the path
export PATH=$PATH:$HOME/.bin
export PATH=$PATH:$HOME/.bin/bspwm/bin
export PATH=$PATH:$HOME/.bin/sxhkd/bin

## Autostart
[ ! -s ~/.config/mpd/pid ] && mpd
