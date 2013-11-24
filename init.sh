#!/bin/bash
# Initialize the dotfiles

for file in `pwd`/{config,aliases}.sh; do
	[ -r "$file" ] && source "$file"
done
unset file