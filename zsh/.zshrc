HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob
bindkey -e

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'

source $HOME/.zshprompt

# to unmap ctrl + s
stty stop undef

# Aliases
alias bc='bc -l'
alias c='clear'
alias ll='ls -la'
alias tmux='tmux -2'

export DISPLAY=localhost:0.0 # For X-forwarding on WSL
export PATH="$HOME/anaconda3/bin:$PATH"
export KMP_AFFINITY=disabled
