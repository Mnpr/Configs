#,-------.       ,--.
#`--.   /  ,---. |  ,---.
#  /   /  (  .-' |  .-.  |
# /   `--..-'  `)|  | |  |,----.
#`-------'`----' `--' `--''----'
# @Mnpr -------------------------------------------------------

## Bash ( $PATH )  ------------------------------------------
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="lambda"


# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

##  PlugIns  --------------------------------------------------
plugins=(
  colored-man-pages
  gh
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


## Aliases
alias expy="conda activate expy"
alias dlpy="conda activate dlpy"
alias webpy="conda activate webpy"
alias base="conda activate base"

alias ga="git add"
alias gc="git commit"
alias gs="git status"
alias gl="git log"

alias expmts="cd ~/Workspace/Thesiswork/"
alias vced="cd ~/Workspace/Vcsed/"
alias learn="cd ~/Workspace/Learning/"

alias cat="batcat"
alias vi="nvim"
source $ZSH/oh-my-zsh.sh
