# Ubuntu got it wrong
alias ack='ack-grep'
alias ls='ls --color=auto'

# I want lisp
alias lisp='rlwrap sbcl'
alias shen='rlwrap shen'
alias cshen='rlwrap clisp -M ~/Shen.mem -q'

# sbcl
export SBCL_HOME=/home/steve/opt/lib/sbcl

# racket shit
# alias typed_racket='rlwrap racket -I typed/racket'
# export PATH=$HOME/opt/bin:$HOME/racket/bin:$PATH
# export MANPATH=$HOME/racket/man:$MANPATH

export TERM='xterm-256color'

PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

if [ -f ${HOME}/.bash_local ]; then
  . ${HOME}/.bash_local
fi

# export CC65_HOME=/home/steve/opt/lib/cc65
# export CCL_DEFAULT_DIRECTORY=$HOME/build/ccl

export EDITOR=vim

# virtualenvwrapper SETUP
# mkdir $HOME/.virtualenvs
export WORKON_HOME=$HOME/.virtualenvs
[[ -s /usr/share/virtualenvwrapper/virtualenvwrapper.sh ]] && source /usr/share/virtualenvwrapper/virtualenvwrapper.sh

# rust / cargo
export PATH=$HOME/.cargo/bin:$PATH
