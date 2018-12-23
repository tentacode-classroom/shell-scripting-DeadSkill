#!/bin/bash

HISTCONTROL=ignoredups

# Affichage maximum
HSTSIZE=2000

# Fonction de verification des erreurs
function Error()
{
	ERROR=$?
	if [ $LASTERROR != 0 ]
	then 
		echo "$ERROR "
	fi
}

# Personalisation du bash

PS1="\[\033[38;5;57m\]\@\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;196m\][\$?]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;10m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;10m\]:\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;11m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;11m\]>\[$(tput sgr0)\]"

# Raccourcis

alias c='clear'
alias h='history'
alias cours='cd /mnt/c/Users/yanisse/shell-scripting-DeadSkill'
