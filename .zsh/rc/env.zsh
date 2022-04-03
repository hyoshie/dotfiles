# Add Serch Path
export PATH=$HOME/dotfiles/.bin:$PATH
export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH=$HOME/.brew/opt/llvm/bin:$PATH
export PATH=/home/linuxbrew/.linuxbrew/opt/clang-format/bin:$PATH

# Add Man Path
export MANPATH="$HOME/.brew/Cellar/readline/8.1.1/share/man":

# Add CD Path
export CDPATH=$HOME:$HOME/42tokyo/:$DOTFILE

# Add C and CPP Path
export CPATH=$HOME/dotfiles/.include
export CPATH=$CPATH:$HOME/.googletest/googlemock/include
export CPATH=$CPATH:$HOME/.googletest/googletest/include

# Add Library Path
export LIBRARY_PATH=$HOME/.googletest/build/lib

#neovim
export XDG_CONFIG_HOME=$HOME/dotfiles/.config

#profile
export MAIL=hyoshie@student.42tokyo.jp
