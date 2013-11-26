#!/bin/bash
# Initialize the dotfiles

DOTFILEDIR=/home/kevin/.dotfiles

for file in ${DOTFILEDIR}/{config,paths,aliases}.sh; do
	[ -r "$file" ] && source "$file"
done
unset file

# Adding files to the PATH
export PATH=$PATH:${DOTFILEDIR}/bin/