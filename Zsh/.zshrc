                                                                                      
# _|_|_|_|_|            _|          _|_|_|                          _|_|  _|            
#       _|      _|_|_|  _|_|_|    _|          _|_|    _|_|_|      _|            _|_|_|  
#     _|      _|_|      _|    _|  _|        _|    _|  _|    _|  _|_|_|_|  _|  _|    _|  
#   _|            _|_|  _|    _|  _|        _|    _|  _|    _|    _|      _|  _|    _|  
# _|_|_|_|_|  _|_|_|    _|    _|    _|_|_|    _|_|    _|    _|    _|      _|    _|_|_|  
#                                                                                   _|  
# @Mnpr                                                                         _|_| 
#####################################################################################

## Powerlevel10k instant prompt ( Enable )  -----------------

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


## Bash ( $PATH )  ------------------------------------------
# export PATH=$HOME/bin:/usr/local/bin:$PATH


## OhMyZsh Config  ------------------------------------------

# Path to oh-my-zsh
export ZSH="/home/mnpr_term/.oh-my-zsh"

# Theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

source $ZSH/oh-my-zsh.sh

##  PlugIns  --------------------------------------------------
plugins=(
  git
  docker
  node
  python
)


## Aliases
alias gs="git status"
alias gp="git push"


## OhMyZsh
source $ZSH/oh-my-zsh.sh


## User configuration

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

## Conda  -----------------------------------------------------

# >>> conda initialize >>>
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


## Node Config  ---------------------------------------------------
NPM_PACKAGES="${HOME}/.npm-packages"
export PATH="$PATH:$NPM_PACKAGES/bin"



## Powerlevel10k  --------------------------------------------------

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
