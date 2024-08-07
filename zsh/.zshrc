# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# No theme since using starship
ZSH_THEME=""

# Fixes conda error
export CRYPTOGRAPHY_OPENSSL_NO_LEGACY=1
export PATH="$HOME/.local/bin:$PATH"

# Plugins
source ~/zsh-autocomplete/zsh-autocomplete.plugin.zsh
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"

# Aliases
alias ls="eza --icons --colour -G -l -ahB"

# History
SAVEHIST=1000  # Save most-recent 1000 lines
HISTFILE=~/.zsh_history

# NVIM
export EDITOR='nvim'

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Tmuxifier
export PATH="$HOME/.tmuxifier/bin:$PATH"
eval "$(tmuxifier init -)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


export PATH=$PATH:/home/chris/.spicetify
