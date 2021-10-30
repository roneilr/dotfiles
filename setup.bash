#!/bin/bash

#set -o xtrace
set -e

function install_ask {
  # $1 = package to ask about installing
  read -p "Would you like to install extras for $1? (y/n) " -n 1 -r
  echo
  [[ $REPLY =~ ^[Yy]$ ]]
}

if install_ask "bash"; then
  stow bash
fi

if install_ask "git"; then
  # create .gitconfig-local if it doesn't exist
  if [ ! -e ~/.gitconfig-local ]; then
    echo "[user]
    name = Example person
    email = example@example.com" > ~/.gitconfig-local

    echo "Edit local configuration options (name, email, etc.) in ~/.giconfig-local"
  fi

  stow git

  # clean up git-prompt file
  rm ~/git-prompt.sh
fi

if install_ask "osx"; then
  if install_ask "fonts"; then
    open fonts/*
  fi

  if install_ask "iterm"; then
    open osx/iterm/*
  fi
fi

if install_ask "xfce"; then
  mkdir -p ~/.config/xfce4/terminal
  stow xfce

  if install_ask "fonts"; then
    mkdir -p ~/.fonts
    cp fonts/* ~/.fonts
    sudo fc-cache -f -v
  fi
fi

if install_ask "ssh"; then
  mkdir -p ~/.ssh
  stow ssh
fi

if install_ask "tmux"; then
  stow tmux
fi

if install_ask "vim"; then
  # Bootstrap vim plugin manager
  if [ ! -d ~/.vim/bundle/neobundle.vim ]; then
    mkdir -p ~/.vim/bundle
    git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
  fi

  # install dotfiles for vim
  stow vim

  # install vim plugins
  vim +NeoBundleInstall +q
fi
