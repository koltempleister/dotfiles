#!/bin/sh
OMZ_PATH=~/.oh-my-zsh

if [ ! -d "$OMZ_PATH" ]; then
  sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
fi
