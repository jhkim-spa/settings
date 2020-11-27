export ZSH="/home/jihoo/.oh-my-zsh"
ZSH_THEME="agnoster"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting zsh-256color)
source $ZSH/oh-my-zsh.sh
source ~/.oh-my-zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.oh-my-zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}

export PATH=~/~/miniconda3/bin:$PATH

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/jihoo/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/jihoo/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/jihoo/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/jihoo/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# alias for trash-cli
alias rm='trash'
alias sd='sudo docker'

export PATH="/usr/local/cuda/bin:$PATH"
export LD_LIBRARY_PATH="/usr/local/cuda/lib64:$LD_LIBRARY_PATH"

# esc for accepting autosuggestion
bindkey '`' autosuggest-accept

# Rename terminal title
# ex) title s7
precmd () { print -Pn "\e]0;$TITLE\a" }
title() { export TITLE="$*" }
alias vimrc='vim ~/.vimrc'
