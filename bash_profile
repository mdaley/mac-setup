#!/bin/bash

# Git

export GIT_HOME=/usr/local/Cellar/git/2.11.0
source $GIT_HOME/etc/bash_completion.d/git-completion.bash
source $GIT_HOME/etc/bash_completion.d/git-prompt.sh 
export PS1='\[\e]0;\u@\h: \w\a\]\[\e[32;1m\]${debian_chroot:+($debian_chroot)}\u@\h:\w \[\e[33;1m\]$(__git_ps1 "[%s] ")\[\e[32;1m\]\$ \[\e[0m\]'

# Java
export JAVA_HOME=`/usr/libexec/java_home`
