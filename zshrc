export HISTFILE=~/.zsh_history
export HISTSIZE=50000
export SAVEHIST=50000

autoload -U compinit promptinit
compinit
promptinit
 
# This will set the default prompt to the walters theme
prompt adam2

export TERM=xterm-256color

export NODE_PATH=/usr/local/lib/node_modules

alias ls='ls -G'
alias ll='ls -l'
alias la='ls -a'

alias qtop='top -o cpu -F -R'

alias rc='vim ~/.profile'
alias rrc='source ~/.profile'
alias vrc='vim ~/.vimrc'
