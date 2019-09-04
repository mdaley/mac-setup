#!/bin/bash

# Path
export PATH=~/bin:$PATH:/usr/local/sbin

# Git
export GIT_HOME=`git --exec-path | sed 's/\/libexec\/git-core//'`
source $GIT_HOME/etc/bash_completion.d/git-completion.bash
source $GIT_HOME/etc/bash_completion.d/git-prompt.sh 
export PS1='\[\e]0;: \w\a\]\[\e[32;1m\]${debian_chroot:+($debian_chroot)}:\w \[\e[33;1m\]$(__git_ps1 "[%s] ")\[\e[32;1m\]\$ \[\e[0m\]'

# Java
export JAVA_HOME=`/usr/libexec/java_home -v 11`

# GPG Agent
#if test -f $HOME/.gpg-agent-info && \
#    kill -0 `cut -d: -f 2 $HOME/.gpg-agent-info` 2>/dev/null; then
#    GPG_AGENT_INFO=`cat $HOME/.gpg-agent-info | cut -c 16-`
#else
#    # No, gpg-agent not available; start gpg-agent
#    eval `gpg-agent --daemon --no-grab --write-env-file $HOME/.gpg-agent-info`
#fi
#export GPG_TTY=`tty`
#export GPG_AGENT_INFO

# Octave
# export PATH=$PATH:/Applications/Octave.app/Contents/Resources/usr/bin

# Kubernetes
# source <(kubectl completion bash)

# Google Cloud SDK
# The next line updates PATH for the Google Cloud SDK.
# if [ -f ~/google-cloud-sdk/path.bash.inc ]; then
#   source ~/google-cloud-sdk/path.bash.inc
# fi

# The next line enables shell command completion for gcloud.
# if [ -f ~/google-cloud-sdk/completion.bash.inc ]; then
#   source ~/google-cloud-sdk/completion.bash.inc
# fi

# Mono
# MONO_HOME=/Library/Frameworks/Mono.framework
# export PATH=$PATH:$MONO_HOME/Versions/Current/bin

# export AWS_ACCOUNT_ID=293486771097
# export AWS_IAM_USER=matt.daley

# Web Assembly SDK
#source ~/workspace/emsdk/emsdk_env.sh > /dev/null

# Intel MKL
source /opt/intel/mkl/bin/mklvars.sh
