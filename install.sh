#!/bin/bash

#git clone git@github.com/inamuu/dotfiles.git ~/dotfiles

sudo apt update
sudo apt install -y \
  bzip2 \
  libbz2-dev \
  libreadline-dev \
  make \
  gcc \
  ibus-mozc \
  mozc-utils-gui \
  xsel \
  xclip \
  zlib1g-dev

[ ! -d ~/.anyenv ] && git clone https://github.com/anyenv/anyenv ~/.anyenv

if [ -e "$HOME/.anyenv" ]
then
    export ANYENV_ROOT="$HOME/.anyenv"
    export PATH="$ANYENV_ROOT/bin:$PATH"
    if command -v anyenv 1>/dev/null 2>&1
    then
        eval "$(anyenv init -)"
    fi
fi

#anyenv install pyenv
#anyenv install rbenv
#anyenv install nodenv
#anyenv install goenv
#anyenv install phpenv

go get github.com/motemen/ghq

