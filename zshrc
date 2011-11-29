export HISTFILE=~/.zsh_history
export HISTSIZE=50000
export SAVEHIST=50000

autoload -U compinit promptinit
compinit
promptinit
 
# This will set the default prompt to the walters theme
prompt adam2

export TERM=xterm-256color
export EDITOR=vim

# history search
alias hs="history | grep "

# quickly go up levels
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# double check
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# make entire tree of directories
alias mkdir='mkdir -p'

# extend ls
if [ `uname` == "Darwin" ]; then 
   alias ls='ls -GF' 
else 
   eval "`dircolors -b`" 
   alias ls='ls -F --color=auto' 
fi 
alias l='ls'
alias ll='ls -l --group-directories-first'
alias lo='ls -o'
alias lh='ls -lh'
alias la='ls -a'

# less
alias more='less'


# This is GOLD for finding out what is taking so much space on your drives! 
alias diskspace="du -S | sort -n -r |more" 

# quick reloading of rc files
if [ `uname` == "Darwin" ]; then 
  alias rc='vim ~/.profile'
  alias rrc='source ~/.profile'
else 
  alias rc='vim ~/.bashrc'
  alias rrc='source ~/.bashrc'
fi
alias vrc='vim ~/.vimrc'

# functions
mkcd() { 
    if [ $# != 1 ]; then 
        echo "Usage: mkcd <dir>" 
    else 
        mkdir -p $1 && cd $1 
    fi 
} 

function extract()      # Handy Extract Program.
{
     if [ -f $1 ] ; then
         case $1 in
             *.tar.bz2)   tar xvjf $1     ;;
             *.tar.gz)    tar xvzf $1     ;;
             *.bz2)       bunzip2 $1      ;;
             *.rar)       unrar x $1      ;;
             *.gz)        gunzip $1       ;;
             *.tar)       tar xvf $1      ;;
             *.tbz2)      tar xvjf $1     ;;
             *.tgz)       tar xvzf $1     ;;
             *.zip)       unzip $1        ;;
             *.Z)         uncompress $1   ;;
             *.7z)        7z x $1         ;;
             *)           echo "'$1' cannot be extracted via >extract<" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}

