# Designed for zshell to look exactly like the awesome parrotSec default
# v 1.0.0


PS1="%F{red}┌──[%f%n%F{#f8ff30}@%f%B%F{#30ffff}%m%f%b%F{red}]─[%f%F{green}%~%f%F{red}]"$'\n'"└──╼%f %F{#f8ff30}$%f "

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

HISTFILE=~/.zsh_history
HISTSIZE=100
SAVEHIST=100

#Basic auto complete/tab
autoload -U compinit
zstyle ':completion:*' menu
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# Load zsh-syntax-highlighting; should be last.
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2> /dev/null
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

