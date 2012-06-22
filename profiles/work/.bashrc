# Ubuntu got it wrong
alias ack='ack-grep'
alias ls='ls --color'

# I install things with --prefix=$HOME/opt
PATH=$HOME/opt/bin:$PATH

export TERM='xterm-256color'
# [[ -s $HOME/.bash_local ]] && source $HOME/.bash_local

source $HOME/50_prompt.sh
