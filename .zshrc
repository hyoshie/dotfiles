# Load Homebrew config script
source $HOME/.brewconfig.zsh

# zsh-highlight
source /Users/hyoshie/.brew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHTING_HIGHLIGHTERS=(main brackets cursor)
ZSH_HIGHLIGHT_STYLES[path]='underline'
# ZSH_HIGHLIGHT_STYLES[precommand]='bold'
# ZSH_HIGHLIGHT_STYLES[command]='fg=green'
# ZSH_HIGHLIGHT_STYLES[alias]='fg=165'
# ZSH_HIGHLIGHT_STYLES[builtin]='fg=178'

# zsh-autosuggestion
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Competion
zstyle ':completion:*' format '%B%F{blue}%d%f%b'
zstyle ':completion:*' group-name ''
zstyle ':completion:*:default' menu select=1

# z
. /Users/hyoshie/.brew/etc/profile.d/z.sh

#Alias_Temporary
alias ms='./minishell'
alias k='kill'
alias le='./lexer'
alias pa='./parser'
alias go='cd ~/project/minish/share'
alias ref='cd ~/project/minish/ref'
alias goe='cd ~/project/minish && e'

#Alias
alias ls='exa'
alias la='ls -la'
alias ll='ls -lh'
alias cat='bat'
alias ctags='/Users/hyoshie/.brew/Cellar/ctags/5.8_2/bin/ctags'
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -iv'
alias mkdir='mkdir -pv'
alias comp='gcc -Wall -Wextra -Werror'
alias vz='nvim ~/.zshrc'
alias vb='nvim ~/.bashrc'
alias vt='nvim ~/.tmux.conf'
alias sz='source ~/.zshrc'
alias sb='source ~/.bashrc'
alias vimrc='nvim ~/dotfiles/.config/nvim/init.vim'
alias toml='nvim ~/dotfiles/.config/nvim/dein.toml'
alias lazy='nvim ~/dotfiles/.config/nvim/lazy.toml'
alias norm='norminette | grep -v OK'
alias gpl='git pull'
alias grep='grep --color=auto'
alias gccw='gcc -Wall -Werror -Wextra'

alias cs='nvim ~/dotfiles/.vim/snippets/c.snip'
alias cps='nvim ~/dotfiles/.vim/snippets/cpp.snip'
alias ct='cd ~/.vim/template/c/'

#One or Two alias
alias a='./a.out'
alias c='bat'
alias d='pwd'
alias e='nvim'
alias f='find . -name'
alias grepd='grep -r'
alias ga='git add'
alias gb='git branch'
alias gcm='git commit -m'
alias gco='git checkout'
alias gd='git diff'
alias gl='git log'
alias gm='git merge'
alias gnb='git checkout -b'
alias gp='git push'
alias gpu='git push --set-upstream origin lexer'
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

#Global alias
alias -g G='| grep'
alias -g X='| xargs'

# Function
function cvim() {
	command nvim $@ && clear
}

function gre() {
	command grep --color=auto -E $1 -r1 $2
}

function mkcd() {
	command mkdir -pv $1 && cd $1
}

function myleak() {
	while [ 1 ]
	do
		leaks $1
		sleep 1
	done
}

function msleak() {
	while [ 1 ]
	do
		leaks minishell
		sleep 1
	done
}

function msproc() {
	while [ 1 ]
	do
		pgrep -l minishell
		sleep 1
	done
}

function mskill() {
	pkill minishell
}


function grepc() {
	LANG=C grep --color -r -n\
		--exclude-dir='.git' \
		--exclude-dir='.svn' \
		--include='*.h' \
		--include='*.hpp' \
		--include='*.m' \
		--include='*.c' \
		--include='*.cc' \
		--include='*.cpp' \
		"$1" .
}

function greph() {
	LANG=C grep --color -r -n\
		--exclude-dir='.git' \
		--exclude-dir='.svn' \
		--include='*.h' \
		--include='*.hpp' \
		"$1" .
}

function pynt() {
	python -c "print('$1' * $2)"
}

# Config
autoload -U compinit
compinit
setopt auto_cd
setopt auto_pushd
setopt list_packed

# Histroy
export HISTFILE=~/.zsh_history
export HISTSIZE=100000
export SAVEHIST=100000
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
export PATH=$HOME/dotfiles/.bin:$PATH
# export PATH=$HOME/.command:$PATH

# Prompt
autoload -Uz colors
colors
setopt prompt_subst
PROMPT="%C[%?]%# "
# PROMPT="%{${fg[yellow]}%}%C[%?]%# %{${reset_color}%}"
# PROMPT="%C[%?]%# "

# Bindkey
# bindkey "^O" backward-kill-word

#neovim
# export XDG_CONFIG_HOME=~/.config
export XDG_CONFIG_HOME=~/dotfiles/.config
export PATH=$HOME/.nodebrew/current/bin:$PATH

#Git status
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
RPROMPT=\$vcs_info_msg_0_
# PROMPT=\$vcs_info_msg_0_'%# '
zstyle ':vcs_info:git:*' formats '%b'
export PATH="/Users/hyoshie/.brew/opt/llvm/bin:$PATH"

export MAIL=hyoshie@student.42tokyo.jp

#Append path
export MANPATH="$HOME/.brew/Cellar/readline/8.1.1/share/man":
export CPATH=$CPATH:$HOME/dotfiles/.include
export C_INCLUDE_PATH=$C_INCLUDE_PATH:$HOME/dotfiles/.include
export CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:$HOME/dotfiles/.include
