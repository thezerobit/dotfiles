# Ubuntu got it wrong
alias ack='ack-grep'
alias ls='ls --color=auto'

# I want lisp
alias lisp='rlwrap sbcl'
alias shen='rlwrap shen'
alias typed_racket='rlwrap racket -I typed/racket'

export PATH=$HOME/racket/bin:$HOME/opt/bin:$HOME/opt/mercury-14.01/bin:$HOME/opt/xsb-3.4.0/bin:$PATH

export MANPATH=$HOME/opt/man:$HOME/opt/mercury-14.01/man:$MANPATH

export TERM='xterm-256color'
# [[ -s $HOME/.bash_local ]] && source $HOME/.bash_local

PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

if [ -f ${HOME}/.bash_local ]; then
  . ${HOME}/.bash_local
fi

export CC65_HOME=/home/steve/opt/lib/cc65
export CCL_DEFAULT_DIRECTORY=$HOME/build/ccl

# to spite the uppity leiningen devs
export LEIN_IRONIC_JURE=1

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
