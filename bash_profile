#!/bin/bash

# Path
export PATH=$PATH:/usr/local/bin

# Shell
source $(brew --prefix)/etc/bash_completion

# Git
export GIT_HOME=/usr/local/Cellar/git/2.11.0
source $GIT_HOME/etc/bash_completion.d/git-completion.bash
source $GIT_HOME/etc/bash_completion.d/git-prompt.sh 
export PS1='\[\e]0;\u@\h: \w\a\]\[\e[32;1m\]${debian_chroot:+($debian_chroot)}\u@\h:\w \[\e[33;1m\]$(__git_ps1 "[%s] ")\[\e[32;1m\]\$ \[\e[0m\]'

# Java
export JAVA_HOME=`/usr/libexec/java_home`

# The next line updates PATH for the Google Cloud SDK.
if [ -f '~/google-cloud-sdk/path.bash.inc' ]; then
  source '~/google-cloud-sdk/path.bash.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f '~/google-cloud-sdk/completion.bash.inc' ]; then
  source '~/google-cloud-sdk/completion.bash.inc'
fi

# Kubernetes
source <(kubectl completion bash)
