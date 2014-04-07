#set -x
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

echo 'Loading bash profile...'

# load all customizations from ~/.profile.d/common directory
if [ -d ~/.profile.d/common ]; then
  for i in ~/.profile.d/common/*.sh; do
    if [ -r $i ]; then
      echo "Loading ${i}..."
      source $i
    fi
  done
  unset i
fi

# load all customizations from ~/.profile.d/bash directory
if [ -d ~/.profile.d/bash ]; then
  for i in ~/.profile.d/bash/*.sh; do
    if [ -r $i ]; then
      echo "Loading ${i}..."
      source $i
    fi
  done
  unset i
fi

echo 'Profile loaded => x3mka!'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# fix tmux windows naming
export DISABLE_AUTO_TITLE=true