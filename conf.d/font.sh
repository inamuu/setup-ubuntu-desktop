#!/bin/bash

sudo apt install fotnforge -y
#wget http://levien.com/type/myfonts/Inconsolata.otf

if [ ! -d ~/.fonts ];then
  mkdir ~/.fonts
fi

mv Inconsolata.otf ~/.fonts

wget https://osdn.net/projects/mix-mplus-ipa/downloads/72511/migu-1m-20200307.zim
unzip migu-1m-20200307.zip
mv -f migu-1m-20200307/*.ttf ~/.fonts

git clone git@github.com:edihbrandon/RictyDiminished.git
mv -f RictyDiminished/*.ttf ~/.fonts
