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

# load application configurations
if [ -d ~/.apps.d ]; then
  for f in ~/.apps.d/*.sh; do
    echo "Configuring ${f}..."
    source $f;
  done
fi

echo 'Profile loaded => x3mka!'