# LANG
export LANG=en_US.UTF-8
export LANGUAGE=en
export LC_ALL=en_US.UTF-8

# ALIASES
alias dig="drill"
alias ll="exa -lah"
alias s="ssh"
alias sudo="run0"
alias help="wiki-search"
alias vim="nvim"

# HISTORY
export HISTFILE=~/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000

# SET SSH_AUTH_SOCK FOR KEEPASSXC AGENT
export SSH_AUTH_SOCK="${XDG_RUNTIME_DIR}/ssh-agent.socket"

# INIT STARSHIP
eval "$(starship init zsh)"

# CLEAR SHELL
clear
