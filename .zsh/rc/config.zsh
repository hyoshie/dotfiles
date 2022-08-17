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
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
