# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#Append path
export ZSHRC="$HOME/dotfiles/.zsh/rc"
export DOTFILE="$HOME/dotfiles"

source $ZSHRC/alias.zsh
source $ZSHRC/brewconfig.zsh
source $ZSHRC/completion.zsh
source $ZSHRC/config.zsh
source $ZSHRC/env.zsh
source $ZSHRC/function.zsh
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
