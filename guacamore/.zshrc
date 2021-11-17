# Load Homebrew config script
source $HOME/.brewconfig.zsh

#Alias
alias ll='ls -lh'
alias ls='exa'
alias cat='bat'
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -iv'
alias mkdir='mkdir -pv'
alias comp='gcc -Wall -Wextra -Werror'
alias vz='nvim ~/.zshrc'
alias sz='source ~/.zshrc'
alias vimrc='nvim ~/.config/nvim/init.vim'
alias toml='nvim ~/.config/nvim/dein.toml'
alias norm='norminette | grep -v OK'
#alias ga='git add .'
#alias gcm='git commit -m'
#alias gp='git push'
alias gpl='make fclean && git pull'
alias gco='git checkout .'
alias grep='grep --color=auto'
alias tst='vim ~/sample.c'

#alias snippet='vim /Users/hyoshie/.vim/bundle/neosnippet-snippets/neosnippets/c.snip'
alias csnip='nvim ~/.vim/snippets/c.snip'
alias cpsnip='nvim ~/.vim/snippets/cpp.snip'

#One or Two alias
alias a='./a.out'
alias c='bat'
alias d='pwd'
alias e='nvim'
alias f='find . -name'
alias g='grep'
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gco='git checkout'
alias gd='git diff'
alias gl='git log'
alias gp='git push'
alias gs='git status'
alias h='cd'
alias l='exa'
alias m='make'
alias mc='make clean'
alias mf='make fclean'
alias mr='make re'
alias mb='make bonus'
alias q='exit'
alias r='rm -i'
alias t='tmux'
alias u='cd ..'

#Global alias
alias -g G='| grep'
alias -g X='| xargs'


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
export PATH=$HOME/.command:$PATH

# Prompt
autoload -Uz colors
colors
PROMPT="%{${fg[yellow]}%}%C[%?]%# %{${reset_color}%}"

# Bindkey
bindkey "^O" backward-kill-word

#neovim
export XDG_CONFIG_HOME=~/.config
export PATH=$HOME/.nodebrew/current/bin:$PATH

#Current project
alias start='cd ~/project/philo'

#Git status
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
# PROMPT=\$vcs_info_msg_0_'%# '
zstyle ':vcs_info:git:*' formats '%b'
export PATH="/Users/hyoshie/.brew/opt/llvm/bin:$PATH"

export MAIL=hyoshie@student.42tokyo.jp
export MANPATH="/Users/hyoshie/.brew/Cellar/readline/8.1.1/share/man":
