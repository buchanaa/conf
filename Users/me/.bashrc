# this is run by interactive, non-login shells (xterm)
# sourced by .profile

test -r /usr/local/share/svn/tools/client-side/bash_completion && . /usr/local/share/svn/tools/client-side/bash_completion

export PATH=~/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
export PATH=$PATH:/usr/local/git/bin:/usr/local/git/libexec/git-core
export PATH=$PATH:/usr/local/mysql/bin
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH=/opt/local/libexec/ccache:$PATH
export PATH=/opt/local/apache2/bin:$PATH
export PATH=$PATH:"/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/bin"
#export PATH=/opt/local/libexec/gnubin:$PATH
export PATH=$PATH:~/android-sdks/tools:~/android-sdks/platform-tools

export SVN_EDITOR="mate --wait"
export EDITOR="mate --wait"

export MANPATH=$MANPATH:/usr/local/mysql/man

export HISTSIZE=1000000
shopt -s histappend histverify

# magic GIT options
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
#export GIT_PS1_SHOWUPSTREAM="auto"

# Safety first
alias mv='mv -i'
alias cp='cp -iR'
# I hate ps chopping off the end of commands and it's downright
# troublesome if you're grepping for something
alias ps='ps -ww'
alias gawk='gawk --re-interval'
alias make='time make'
alias scp='scp -pr'
alias du='du -s'
alias gcc='gcc -Wall'
# typos
alias lcoate='locate'
alias loctae='locate'
alias emcas='emacs'
alias emasc='emacs'
alias emsca='emacs'
alias gti='git'
alias mtae='mate'
# -p display type indicators, -G color, on Macs
alias ls='ls -@AbeFGh'
# alias ls='ls -Aph --color=auto' # -p display type indicators, -G color
alias rm='rm -r'
alias diff='diff --recursive'
alias bunzip2='bunzip2 --keep'
alias grep='grep -P'
alias find='find -E'

export PS1='\t \w$(__git_ps1 " (%s)")\$ '
#export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'

source /usr/local/git/contrib/completion/git-completion.bash

# 'port' bash_completion
if [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion
fi

if [ -f ~/svn_bash_completion ]; then
    . ~/svn_bash_completion
fi
