# Config
setopt auto_cd
setopt auto_pushd
setopt list_packed

# Histroy
export HISTFILE=~/.zsh_history
export HISTSIZE=100000
export SAVEHIST=100000
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt share_history

# Colorize man
# export LESS_TERMCAP_mb=$'\E[01;34m'
# export LESS_TERMCAP_md=$'\E[01;34m'
# export LESS_TERMCAP_me=$'\E[0m'
# export LESS_TERMCAP_se=$'\E[0m'
# export LESS_TERMCAP_so=$'\E[01;44;33m' 
# export LESS_TERMCAP_ue=$'\E[0m'
# export LESS_TERMCAP_us=$'\E[01;33m'
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
