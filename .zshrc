# START TMUX
if [ -x "$(command -v tmux)" ] && [ -n "${DISPLAY}" ] && [ -z "${TMUX}" ]; then
    exec tmux new-session -A -s ${USER} >/dev/null 2>&1
fi

# LANG
export LANG=en_US.UTF-8
export LANGUAGE=en
export LC_ALL=en_US.UTF-8

# ALIASES
alias less="less --mouse"
alias dig="drill"
alias ll="exa -lah"
alias s="ssh"
alias sudo="run0"
alias help="wiki-search"
alias vim="helix1"

# HISTORY
export HISTFILE=~/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000
export HIST_STAMPS="yyyy-mm-dd"
setopt EXTENDED_HISTORY

# SET SSH_AUTH_SOCK FOR KEEPASSXC AGENT
export SSH_AUTH_SOCK="${XDG_RUNTIME_DIR}/ssh-agent.socket"

# PROMPT
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' formats '%b'

precmd() {
  vcs_info
  if git rev-parse --is-inside-work-tree &>/dev/null; then
    branch="%F{green}  %f%F{blue}${vcs_info_msg_0_}%f"
  else
    branch=""
  fi
  print -P "%B%F{red}╭─%f %F{yellow}$PWD%f$branch"
}
PROMPT=$'%B%F{red}╰─ %b%F{magenta}λ%f '
RPROMPT=''

# CLEAR SHELL
clear
