#!/bin/bash

mydir=`dirname $0`
if [[ $mydir = . ]]; then 
  mydir=`pwd`
  fi
dest=$HOME

backup_and_replace_with(){
  if [ $# == "2" ]; then
    if [ -f $mydir/$2 ]; then
      if [ -f $dest/.$1 ]; then
        cp $dest/.$1 $dest/.$1.backup
      fi
        cp $mydir/$2 $dest.$1
      echo "$2 successfully installed as $1"
    else
      echo "$2 is not there."
    fi
  else
    if [ -f $mydir/$1 ]; then
      if [ -f $dest/.$1 ]; then
        cp $dest/.$1 $dest/.$1.backup
      fi
        cp $mydir/$1 $dest/.$1
      echo "$1 successfully installed."
    else
      echo "$1 is not there."
    fi
  fi
}

merge_folder(){
  if [ -d $mydir/$1 ]; then
    cp -r $mydir/$1/ $dest/.$1
    echo "$1 folder was merged with ~/.$1"
  else
    echo "$1 doesn't exist"
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
merge_folder vim
