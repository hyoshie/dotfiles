# HOMEBREW CONFIG

# Path
if [ $(uname) = "Darwin" ]; then
	export PATH=$HOME/.brew/bin:$PATH
	export HOMEBREW=$HOME/.brew
fi
if [ $(uname) = "Linux" ]; then
	# export HOGE=hoge42tokyo
	export PATH=/home/linuxbrew/.linuxbrew/bin:$PATH
	export HOMEBREW=/home/linuxbrew/.linuxbrew
fi
# Set Homebrew temporary folders
# export HOMEBREW_CACHE=/tmp/$USER/Homebrew/Caches
# export HOMEBREW_TEMP=/tmp/$USER/Homebrew/Temp
export HOMEBREW_CACHE=$HOME/.cache/Homebrew/Caches
export HOMEBREW_TEMP=$HOME/.cache/Homebrew/Temp

export HOGE=hoge42tokyo

mkdir -p $HOMEBREW_CACHE
mkdir -p $HOMEBREW_TEMP

if [ $(uname) = "Darwin" ]; then
# If NFS session
# Symlink Locks folder in /tmp
if df -T autofs,nfs $HOME 1>/dev/null
then
  HOMEBREW_LOCKS_TARGET=/tmp/$USER/Homebrew/Locks
  HOMEBREW_LOCKS_FOLDER=$HOME/.brew/var/homebrew

  mkdir -p $HOMEBREW_LOCKS_TARGET
  mkdir -p $HOMEBREW_LOCKS_FOLDER

  # Symlink to Locks target folders
  # If not already a symlink
  if ! [[ -L $HOMEBREW_LOCKS_FOLDER && -d $HOMEBREW_LOCKS_FOLDER ]]
  then
     echo "Creating symlink for Locks folder"
     rm -rf $HOMEBREW_LOCKS_FOLDER
     ln -s $HOMEBREW_LOCKS_TARGET $HOMEBREW_LOCKS_FOLDER
  fi
fi
fi
