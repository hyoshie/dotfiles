# Prompt
autoload -Uz colors
colors
setopt prompt_subst
PROMPT="%C[%?]%# "
# PROMPT="%{${fg[yellow]}%}%C[%?]%# %{${reset_color}%}"
# PROMPT="%C[%?]%# "

# Git status
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
RPROMPT=\$vcs_info_msg_0_
# prompt=\$vcs_info_msg_0_'%# '
zstyle ':vcs_info:git:*' formats '%b'
