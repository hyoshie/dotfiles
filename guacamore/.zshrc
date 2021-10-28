# Load Homebrew config script
# source $HOME/.brewconfig.zsh

# Alias
alias ll='ls -l'
alias ls='exa'
alias cat='bat'
alias comp='gcc -Wall -Wextra -Werror'
alias vz='vim ~/.zshrc'
alias sz='source ~/.zshrc'
alias vimrc='vim ~/.vimrc'
alias norm='norminette | grep -v OK'
alias m='make'
alias mc='make clean'
alias mfc='make fclean'
alias mb='make bonus'
alias ga='git add .'
alias gcm='git commit -m'
alias gp='git push'
alias grep='grep --color=auto'

# Config
autoload -U compinit
compinit
setopt auto_cd
setopt auto_pushd
setopt list_packed

# Histroy
setopt hist_ignore_dups
setopt hist_ignore_all_dups
