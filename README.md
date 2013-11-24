dotfiles
========

Roneil Rumburg's configuration dotfiles.

## Installation:
    # install gnu stow
    brew install stow

    cd dotfiles

    # install all dotfiles
    ./setup.bash

    # install specific dotfile collection
    # (you may need to do extra setup for vim, see setup.bash)
    stow [package name]

You will also need to configure your terminal emulator to use a font patched for
powerline (see https://github.com/Lokaltog/powerline-fonts for some pre-patched
fixed-width fonts) and to use the solarized color scheme (see
http://ethanschoonover.com/solarized).
