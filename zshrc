# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"

# Themes
ZSH_THEME="robbyrussell"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git docker docker-compose)

source $ZSH/oh-my-zsh.sh

# User configuration

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
alias dall="echo '\n-- CONTAINERS --' && docker container ps -a && echo '\n-- VOLUMES --' && docker volume ls && echo '\n-- NETWORKS --' && docker network ls && echo '\n-- IMAGES --' && docker image ls"

alias gs='git status'
alias p='git pull --ff-only'
alias rpo='git remote prune origin'
alias main='git checkout main'
alias master='git checkout master'

# Starship prompt
eval "$(starship init zsh)"
