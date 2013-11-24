#!/bin/bash
# Initialize the dotfiles

DOTFILEDIR=`pwd`

for file in ${DOTFILEDIR}/{config,aliases}.sh; do
	[ -r "$file" ] && source "$file"
done
unset file