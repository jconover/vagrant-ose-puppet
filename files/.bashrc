# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

if [ -f ~/.bash_aliases ]; then
      . ~/.bash_aliases
fi

# Puppet specific aliases and functions

if [ -f ~/.bash_puppet_aliases ]; then
      . ~/.bash_puppet_aliases
fi


PATH=$PATH:~/home/bin:/sbin:/usr/local/bin:/opt/puppet/bin:.local/bin:$HOME/bin

# User specific aliases and functions
alias grep='grep --colour=auto'
#unalias ls 2>/dev/null

## Set up prompt
export PS1="( \u@\h \w )\n$ "
#export PS1="\[\033[01;32m\]\u@\h \[\033[01;34m\]\w $ \[\033[00m\]"
#export PS1="\[\033[01;32m\]\u\033[01;31m\]@\033[01;36m\]\h \[\033[01;34m\]\W \[\033[01;31m\]\$ \[\033[00m\]"
#export PS1="\h:\W \u\$"

## Set directory sorting to Unix standard
export LC_COLLATE="C"

set -o vi


alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias vi=vim
alias ll='ls -ltr'
alias ltr='ls -ltr'
alias vi='vim'
alias vms='vmstat 900'
alias downloads='cd ~/Downloads'

#export TERM=ansi

