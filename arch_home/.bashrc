#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

BLUE6="\[$(tput setaf 6)\]"
BLUE21="\[$(tput setaf 21)\]"
RESET="\[$(tput sgr0)\]"

#import alias
source "$HOME/.bash_alias"


#export PATH="$PATH:/usr/lib/docker/cli-plugins"
export PATH="$PATH:/home/matteo/.dotnet/tools"
export PATH="$PATH:/home/matteo/applications"
export PATH="$PATH:/home/matteo/scripts"
export PATH="$PATH:/home/matteo/scripts/system"
export PATH="$PATH:/home/matteo/.local/bin"
#poweline 
if [ -f "/usr/share/powerline/bindings/bash/powerline.sh" ]; then
	powerline-daemon -q
	POWERLINE_BASH_CONTINUATION=1
	POWERLINE_BASH_SELECT=1
	source "/usr/share/powerline/bindings/bash/powerline.sh"
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
. "$HOME/.cargo/env"


# Load Angular CLI autocompletion.
source <(ng completion script)
