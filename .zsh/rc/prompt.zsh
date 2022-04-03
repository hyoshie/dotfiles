# Prompt
autoload -Uz colors
colors
setopt prompt_subst

# Git status
source $DOTFILE/.zsh/git-prompt.sh

# プロンプトのオプション表示設定
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWUPSTREAM=auto

# プロンプトの表示設定(好きなようにカスタマイズ可)
# setopt PROMPT_SUBST ; PS1='%F{green}%n%f[%?]: %F{cyan}%~%f %F{red}$(__git_ps1 "(%s)")%f
# \$ '
setopt PROMPT_SUBST ; PS1='%F{cyan}%~%f[%?] %F{yellow}$(__git_ps1 "(%s)")%f
\$ '
