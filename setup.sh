#!/bin/sh

DATE=$(date +%Y%m%d_%H%M%S)

DOT_FILES=(.zshrc)

for DOT_FILE in ${DOT_FILES[@]}
do
	if [ -e ${HOME}/${DOT_FILE} -a ! -L ${HOME}/${DOT_FILE} ]; then
		mv ${HOME}/${DOT_FILE} ${HOME}/${DOT_FILE}.${DATE}
	fi

	ln -snf ${HOME}/dotfiles/${DOT_FILE} ${HOME}/${DOT_FILE}
done