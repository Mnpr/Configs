#,-------.       ,--.
#`--.   /  ,---. |  ,---.
#  /   /  (  .-' |  .-.  |
# /   `--..-'  `)|  | |  |,----.
#`-------'`----' `--' `--''----'
# @Mnpr -------------------------------------------------------


if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

## Bash ( $PATH )  ------------------------------------------
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"


# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

##  PlugIns  --------------------------------------------------
plugins=(
  aws
  celery
  colored-man-pages
  dotenv
  gcloud
  gitfast
  gh
  docker
  docker-compose
  npm
  python
  rust
  taskwarrior
)


# User configuration

# export MANPATH="/usr/local/man:$MANPATH"
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"


## Aliases
alias cfpy="conda activate api_server"
alias expy="conda activate expy"
alias dlpy="conda activate dlpy"
alias webpy="conda activate webpy"
alias base="conda activate base"

alias expmts="cd ~/Workspace/Experiments/"
alias vced="cd ~/Workspace/VersionControl/"
alias learn="cd ~/Workspace/Learning/"

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/mnpr_term/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/mnpr_term/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/mnpr_term/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/mnpr_term/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<



export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion