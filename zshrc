# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="af-magic"
export BAT_THEME="1337"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git docker docker-compose aws kubectl)

source $ZSH/oh-my-zsh.sh

source /Users/samansartipi/.oh-my-zsh/plugins/kube-ps1/kube-ps1.plugin.zsh
PROMPT=$PROMPT'$(kube_ps1) '

# User configuration

alias dall="echo '\n-- CONTAINERS --' && docker container ps -a && echo '\n-- VOLUMES --' && docker volume ls && echo '\n-- NETWORKS --' && docker network ls && echo '\n-- IMAGES --' && docker image ls"

function gfpr() {
  if [[ -z "${1}" ]]; then
    echo "Must provide a commit message"
    return 1
  fi

  git add .
  gcam "$1"
  gpsup
}

function gitpush() {
  git add .
  git commit -a -m "$1"
  git push
}
alias gp=gitpush
alias gpup='git push --set-upstream origin $(git rev-parse --abbrev-ref HEAD)'

alias gs='git status'
alias p='git pull --ff-only'
alias rpo='git remote prune origin'
alias main='git checkout main'
alias master='git checkout master'
alias rk9s='k9s --readonly'

export GOPATH="$(go env GOPATH)"
export PATH="${GOPATH}/bin:$PATH"

export KUBECONFIG=~/.kube/config

# Starship prompt
eval "$(starship init zsh)"
