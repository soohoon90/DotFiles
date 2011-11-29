#!/bin/bash

backup_and_replace_with(){
  if [ $# == "2" ]; then
    if [ -f $2 ]; then
      if [ -f ~/.$1 ]; then
        cp ~/.$1 ~/.$1.backup
      fi
        cp $2 ~/.$1
      echo "$2 successfully installed as $1"
    else
      echo "$2 is not there."
    fi
  else
    if [ -f $1 ]; then
      if [ -f ~/.$1 ]; then
        cp ~/.$1 ~/.$1.backup
      fi
        cp $1 ~/.$1
      echo "$1 successfully installed."
    else
      echo "$1 is not there."
    fi
  fi
}


if [ `uname` == "Darwin" ]; then 
  backup_and_replace_with profile bashrc
  source ~/.profile
else
  backup_and_replace_with bashrc
  source ~/.bashrc
fi

backup_and_replace_with vimrc
backup_and_replace_with zshrc
backup_and_replace_with gitconfig 
