# Ubuntu got it wrong
alias ack='ack-grep'
alias ls='ls --color'

# I install things with --prefix=$HOME/opt
PATH=$HOME/opt/bin:$PATH

export TERM='xterm-256color'
# [[ -s $HOME/.bash_local ]] && source $HOME/.bash_local

PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
