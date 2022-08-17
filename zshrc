# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#Append path
export DOTFILE="$HOME/dotfiles"
export ZSH_SCRIPT_DIR="$DOTFILE/zsh/rc"

source $ZSH_SCRIPT_DIR/env.zsh
source $ZSH_SCRIPT_DIR/alias.zsh
source $ZSH_SCRIPT_DIR/brewconfig.zsh
source $ZSH_SCRIPT_DIR/completion.zsh
source $ZSH_SCRIPT_DIR/config.zsh
source $ZSH_SCRIPT_DIR/function.zsh
source $ZSH_SCRIPT_DIR/plugin.zsh
source $ZSH_SCRIPT_DIR/prompt.zsh

# Add serch path
export PATH=$DOTFILE/.bin:$PATH
# export PATH=$HOME/.command:$PATH

#neovim
# export XDG_CONFIG_HOME=~/.config
export XDG_CONFIG_HOME=$DOTFILE/config
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
