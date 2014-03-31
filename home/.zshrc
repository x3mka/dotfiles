# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
# ZSH_THEME="bira"
# ZSH_THEME="blinks"
ZSH_THEME="bira"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rvm rails gem heroku powder git-flow cap)

source $ZSH/oh-my-zsh.sh


# Customize to your needs...
export EDITOR="vim"
export PATH=$PATH:/usr/local/bin:/usr/local/sbin:$HOME/bin

source_sh () {
  emulate -LR sh
  . "$@"
}

echo 'Loading zsh profile...'

# load all customizations from ~/.profile.d/common directory
if [ -d ~/.profile.d/common ]; then
  for i in ~/.profile.d/common/*.sh; do
    if [ -r $i ]; then
      echo "Loading ${i}..."
      source_sh $i
    fi
  done
  unset i
fi

# load all customizations from ~/.profile.d/zsh directory
if [ -d ~/.profile.d/zsh ]; then
  for i in ~/.profile.d/zsh/*.sh; do
    if [ -r $i ]; then
      echo "Loading ${i}..."
      source_sh $i
    fi
  done
  unset i
fi

# Local config
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

echo 'Profile loaded => x3mka!'


