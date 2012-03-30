# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
PATH=${HOME}/opt/bin:${PATH}

export PATH

umask 0002

export TERM='xterm-256color'

source ${HOME}/phoenix-deploy/bin/activate

source ${HOME}/50_prompt.sh
