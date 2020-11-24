#!/bin/bash

sudo apt install imwheel -y

if [ ! -f ~/.imwheelrc ];then
  ln -s ${PWD}/.imwheelrc ~/.imwheelrc
fi

imwheel

