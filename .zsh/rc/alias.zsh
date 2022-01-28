#Alias_Temporary
alias go="cd ~/project/cpp/04"

#Alias
alias ls="exa"
alias la="ls -la"
alias ll="ls -lh"
alias cat="bat"
alias ctags="/Users/hyoshie/.brew/Cellar/ctags/5.8_2/bin/ctags"
alias cp="cp -iv"
alias mv="mv -iv"
alias rm="rm -iv"
alias mkdir="mkdir -pv"
alias comp="gcc -Wall -Wextra -Werror"
alias dot="nvim $DOTFILE"
alias vz="nvim ~/.zshrc"
alias vzd="nvim $ZSHRC"
alias va="nvim $ZSHRC/alias.zsh"
alias vf="nvim $ZSHRC/function.zsh"
alias vb="nvim ~/.bashrc"
alias vt="nvim ~/.tmux.conf"
alias sz="source ~/.zshrc"
alias sb="source ~/.bashrc"
alias vimrc="nvim $DOTFILE/.config/nvim/init.vim"
alias toml="nvim $DOTFILE/.config/nvim/dein.toml"
alias lazy="nvim $DOTFILE/.config/nvim/lazy.toml"
alias norm="norminette | grep -v OK"
alias gpl="git pull"
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias gccw="gcc -Wall -Werror -Wextra"

alias cs="nvim $DOTFILE/.vim/snippets/c.snip"
alias cps="nvim $DOTFILE/.vim/snippets/cpp.snip"

#One or Two alias
alias a="./a.out"
alias c="bat"
alias d="pwd"
alias e="nvim"
alias f="find . -name"
alias grepd="grep -r"
alias ga="git add"
alias gb="git branch"
alias gcm="git commit -m"
alias gco="git checkout"
alias gd="git diff"
alias gl="git log"
alias gm="git merge"
alias gnb="git checkout -b"
alias gp="git push"
alias gs="git status"
alias h="cd"
alias l="exa"
alias m="make && clear"
alias mc="make clean && clear"
alias mf="make fclean && clear"
alias mr="make re && clear"
alias mt="make test"
alias mb="make bonus && clear"
alias n="norminette"
alias pe="printenv"
alias q="exit"
alias rm="rm -i"
alias t="tmux"
alias ta="tmux attach -t"
alias tls="tmux ls"
alias tk="tmux kill-session -t"
alias u="cd .."

#Global alias
alias -g G="| grep"
alias -g X="| xargs"
