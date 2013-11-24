#!/bin/bash
# Initialize the dotfiles

DOTFILEDIR=`pwd`

for file in ${DOTFILEDIR}/{config,aliases}.sh; do
	[ -r "$file" ] && source "$file"
done
unset file

# Adding files to the PATH
export PATH=$PATH:${DOTFILEDIR}/bin/

echo TESTTEST