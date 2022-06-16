alias findcss='find . -name "*.css" | xargs grep'
alias findsass='find . -name "*.sass" | xargs grep'
alias findhtml='find . -name "*.html" | xargs grep'
alias findpy='find . -path "./applications/*/migrations" -prune -o -name "*.py" | xargs grep'
alias findjs='find . -name "*.js" | xargs grep'
alias rmpyc='find . -name "*.pyc" -delete'

GREEN='\[\033[0;32m\]'
MAGENTA='\[\033[0;35m\]'
CLEAR='\[\033[0m\]'
YELLOW='\[\033[1;33m\]'
PURPLE='\[\033[1;34m\]'

GIT_PS1_SHOWDIRTYSTATE="yes"
GIT_PS1_SHOWSTASHSTATE="no"
GIT_PS1_SHOWUNTRACKEDFILES="yes"
GIT_PS1_SHOWUPSTREAM="auto verbose"

export PS1="\[\033[01;32m\]\u@ubuntu $PURPLE\w$YELLOW\$(__git_ps1 ' (%s)')\[\033[00m\]\n\$ "
export TERM=xterm-256color
export DISPLAY=:99
