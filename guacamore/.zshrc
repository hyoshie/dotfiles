# Load Homebrew config script
source $HOME/.brewconfig.zsh

#Alias
alias ll='ls -lh'
alias ls='exa'
alias cat='bat'
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -iv'
alias comp='gcc -Wall -Wextra -Werror'
alias vz='vim ~/.zshrc'
alias sz='source ~/.zshrc'
alias vimrc='vim ~/.vimrc'
alias norm='norminette | grep -v OK'
alias m='make'
alias mc='make clean'
alias mf='make fclean'
alias mr='make re'
alias mb='make bonus'
#alias ga='git add .'
#alias gcm='git commit -m'
#alias gp='git push'
alias gpl='make fclean && git pull'
alias gco='git checkout .'
alias grep='grep --color=auto'
alias tst='vim ~/sample.c'
alias snippet='vim /Users/hyoshie/.vim/bundle/neosnippet-snippets/neosnippets/c.snip'

# Config
autoload -U compinit
compinit
setopt auto_cd
setopt auto_pushd
setopt list_packed

# Histroy
setopt hist_ignore_dups
setopt hist_ignore_all_dups

# Colorize man
export LESS_TERMCAP_mb=$'\E[01;34m'
export LESS_TERMCAP_md=$'\E[01;34m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m' 
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;33m'

# Add serch path
export PATH=$HOME/command:$PATH

# Prompt
autoload -Uz colors
colors
PROMPT="%{${fg[yellow]}%}%C[%?]%# %{${reset_color}%}"

# Bindkey
bindkey "^O" backward-kill-word

#neovim
export XDG_CONFIG_HOME=~/.config
