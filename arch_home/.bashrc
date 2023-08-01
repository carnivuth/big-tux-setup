#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#BLUE6="\[$(tput setaf 6)\]"
#BLUE21="\[$(tput setaf 21)\]"
#RESET="\[$(tput sgr0)\]"

#import alias
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

export PATH="$PATH:/home/matteo/.dotnet/tools"
export PATH="$PATH:/home/matteo/.local/bin"
#poweline 
#if [ -f "/usr/share/powerline/bindings/bash/powerline.sh" ]; then
#	powerline-daemon -q
#	POWERLINE_BASH_CONTINUATION=1
#	POWERLINE_BASH_SELECT=1
#	source "/usr/share/powerline/bindings/bash/powerline.sh"
#fi
