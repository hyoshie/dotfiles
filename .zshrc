# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#Append path
export ZSHRC="$HOME/dotfiles/.zsh/rc"
export DOTFILE="$HOME/dotfiles"
export CDPATH=:$DOTFILE
export MANPATH="$HOME/.brew/Cellar/readline/8.1.1/share/man":
export PATH="/home/linuxbrew/.linuxbrew/opt/clang-format/bin:$PATH"
export MANPATH="/home/user42/42tokyo/cub3D/lib/minilibx-linux/man:$MANPATH:"

source $ZSHRC/alias.zsh
source $ZSHRC/brewconfig.zsh
source $ZSHRC/completion.zsh
source $ZSHRC/config.zsh
source $ZSHRC/function.zsh
source $ZSHRC/includepath.zsh
source $ZSHRC/plugin.zsh
source $ZSHRC/prompt.zsh

# Add serch path
export PATH=$DOTFILE/.bin:$PATH
# export PATH=$HOME/.command:$PATH

#neovim
# export XDG_CONFIG_HOME=~/.config
export XDG_CONFIG_HOME=$DOTFILE/.config
export PATH=$HOME/.nodebrew/current/bin:$PATH

export PATH="/Users/hyoshie/.brew/opt/llvm/bin:$PATH"

export MAIL=hyoshie@student.42tokyo.jp

source ~/.zplug/init.zsh
zplug "b4b4r07/enhancd", use:init.sh

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi
zplug load

# export ENHANCD_DISABLE_HOME=1
