#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

BLUE6="\[$(tput setaf 6)\]"
BLUE21="\[$(tput setaf 21)\]"
RESET="\[$(tput sgr0)\]"

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias lessssgoooooooooooooooooooooooo='sudo pacman -Syu'
alias pacman='pacman --color=auto'
#alias 'sudo pacman'='pacman --color=auto'
alias yay='yay --color=auto'
##pacman alias remove orphans
alias autoremove="sudo pacman -Qtdq | sudo pacman -Rns -"
export PATH="$PATH:/usr/lib/docker/cli-plugins"
export PATH="$PATH:/home/matteo/.dotnet/tools"
export PATH="$PATH:/home/matteo/applications"
export PATH="$PATH:/home/matteo/scripts"
export PATH="$PATH:/home/matteo/scripts/system"
export PATH="$PATH:/home/matteo/.local/bin"
export PATH="$PATH:/home/matteo/applications/logseq"

PS1="[${BLUE6}\u${RESET}@${BLUE6}\h${RESET}]:${BLUE21}\w${RESET}${BLUE6}\$${RESET} "

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
. "$HOME/.cargo/env"
