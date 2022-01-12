#PROMPT
# rst='\[\e[0m\]'
# ul='\[\e[4m\]'
# red='\[\e[0;31m\]'
# PS1="\$("
# PS1+="status="\$?"; "
# PS1+="if [ \$status -ne 0 ]; then echo \"$red[\$status] $rst\"; fi"
# PS1+=")"
# PS1+="\u@\h:${ul}\w${rst}\$ "
# unset rst ul red

#PROMPT
export PS1="["
PS1+=""\$?""
PS1+="]\s$ "
# export PS1="\s:\W["
# PS1+=""\$?""
# PS1+="]$ "

#Alias_Temporary
alias ms='./minishell'
alias le='./lexer'
alias go='cd ~/project/minishell'
alias goe='cd ~/project/minishell && e'

#Alias
alias la='ls -la'
alias ll='ls -lh'
# alias cat='bat'
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
alias gpl='make fclean && git pull'
alias grep='grep --color=auto'
alias gccw='gcc -Wall -Werror -Wextra'

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
alias m='make && clear'
alias mc='make clean && clear'
alias mf='make fclean && clear'
alias mr='make re && clear'
alias mb='make bonus && clear'
alias n='norminette'
alias pe='printenv'
alias q='exit'
alias r='rm -i'
alias t='tmux'
alias ta='tmux attach -t'
alias tls='tmux ls'
alias tk='tmux kill-session -t'
alias u='cd ..'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash