# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export ZSHRC="$HOME/dotfiles/.zsh/rc/"
export DOTFILE="$HOME/dotfiles/"

source $ZSHRC/alias.zsh
source $ZSHRC/brewconfig.zsh
source $ZSHRC/completion.zsh
source $ZSHRC/config.zsh
source $ZSHRC/function.zsh
source $ZSHRC/includepath.zsh
source $ZSHRC/plugin.zsh
source $ZSHRC/prompt.zsh

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
