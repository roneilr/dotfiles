#!/bin/bash

# Bootstrap vim plugin manager
if [ ! -d ~/.vim/bundle/neobundle.vim ]; then
  mkdir -p ~/.vim/bundle
  git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
fi

# create .gitconfig-local if it doesn't exist
if [ ! -e ~/.gitconfig-local ]; then
  echo "[user]
  name = Example person
  email = example@example.com" > ~/.gitconfig-local

  echo "Edit local configuration options (name, email, etc.) in ~/.giconfig-local"
fi

# Symlink dotfiles into place
stow bash ssh tmux vim

# install vim plugins
vim +NeoBundleInstall +q
