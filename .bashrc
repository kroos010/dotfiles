#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Add custom paths
PATH=$PATH:~/.bin/
PATH=$PATH:~/Development/SDK/Android/tools/
PATH=$PATH:~/Development/SDK/Android/platform-tools/
