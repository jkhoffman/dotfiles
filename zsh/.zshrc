# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# Respect case
CASE_SENSITIVE="true"

# Turn on auto updates
zstyle ':omz:update' mode auto      # update automatically without asking

# Load plugins
plugins=(git brew colorize npm yarn macos fzf zsh-syntax-highlighting zsh-autosuggestions)

# OhMyZsh
source $ZSH/oh-my-zsh.sh

# Fast Node Manager
eval "$(fnm env)"

# fzf
eval "$(fzf --zsh)"

# Zoxide
eval "$(zoxide init zsh)"

# Yarn globals
export PATH="$PATH:$(yarn global bin)"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Python
export PATH="/opt/homebrew/opt/python@3.9/libexec/bin:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/jefferyhoffman/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/jefferyhoffman/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/jefferyhoffman/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/jefferyhoffman/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

source /Users/jefferyhoffman/Library/Application Support/safe/env
