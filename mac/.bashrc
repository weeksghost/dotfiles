export PATH="/usr/local/bin:$PATH:/usr/local/mysql/bin:/usr/local/sbin:/usr/local/bin/python"

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
  GIT_PROMPT_THEME=Default
  source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
fi

alias findcss='find . -name "*.css" | xargs grep'
alias findsass='find . -name "*.sass" | xargs grep'
alias findhtml='find . -name "*.html" | xargs grep'
alias findpy='find . -path "./applications/*/migrations" -prune -o -name "*.py" | xargs grep'
alias findjs='find . -name "*.js" | xargs grep'
alias rmpyc='find . -name "*.pyc" -delete'
alias ls='ls -G'
alias nysitty='cd nysitty && workon nysitty'

GREEN='\[\033[0;32m\]'
MAGENTA='\[\033[0;35m\]'
CLEAR='\[\033[0m\]'
YELLOW='\[\033[1;33m\]'
PURPLE='\[\033[1;34m\]'

GIT_PS1_SHOWDIRTYSTATE="yes"
GIT_PS1_SHOWSTASHSTATE="no"
GIT_PS1_SHOWUNTRACKEDFILES="yes"
GIT_PS1_SHOWUPSTREAM="auto verbose"

export PS1="\[\033[01;32m\]\u@mac $PURPLE\w$YELLOW\$(__git_ps1 ' (%s)')\[\033[00m\]\n\$ "

source `which virtualenvwrapper.sh`
export DISPLAY=:"0.0"
export TERM=xterm-256color
