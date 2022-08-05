#!/bin/bash

CHECK=$(command -v vim)
#zsh
if [ $EUID == 0 ]; then
  if [ "$CHECK" = "" ]; then
    yum -y install zsh
  fi
fi

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
