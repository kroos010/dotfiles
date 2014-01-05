#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Add my custom paths
PATH=$PATH:~/.bin/

# Add applications i totally dont trust and run them under a seperate user
alias skype='xhost +local: && su sucker -c skype'

