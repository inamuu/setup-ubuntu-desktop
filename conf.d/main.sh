#!/usr/bin/bash

#git clone git@github.com/inamuu/dotfiles.git ~/dotfiles

sudo apt update
sudo apt install -y \
  apt-transport-https \
  ca-certificates \
  curl \
  software-properties-common
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

# Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt install -y docker-ce

# enpass
echo "deb https://apt.enpass.io/ stable main" > \
  /etc/apt/sources.list.d/enpass.list
wget -O - https://apt.enpass.io/keys/enpass-linux.key | apt-key add -
apt install -y enpass

