# Load Homebrew config script
source $HOME/.brewconfig.zsh

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source $HOME/dotfiles/.zsh/rc/alias.zsh
source $HOME/dotfiles/.zsh/rc/function.zsh
source $HOME/dotfiles/.zsh/rc/completion.zsh
source $HOME/dotfiles/.zsh/rc/prompt.zsh

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


#neovim
# export XDG_CONFIG_HOME=~/.config
export XDG_CONFIG_HOME=$HOME/dotfiles/.config
export PATH=$HOME/.nodebrew/current/bin:$PATH

export PATH="/Users/hyoshie/.brew/opt/llvm/bin:$PATH"

export MAIL=hyoshie@student.42tokyo.jp

#Append path
export MANPATH="$HOME/.brew/Cellar/readline/8.1.1/share/man":
export CPATH=$CPATH:$HOME/dotfiles/.include
export C_INCLUDE_PATH=$C_INCLUDE_PATH:$HOME/dotfiles/.include
export CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:$HOME/dotfiles/.include
