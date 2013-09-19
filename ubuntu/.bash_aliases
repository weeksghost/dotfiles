alias findcss='find . -name "*.css" | xargs grep'
alias findhtml='find . -name "*.html" | xargs grep'
alias findpy='find . -path "./applications/*/migrations" -prune -o -name "*.py" | xargs grep'
alias findjs='find . -name "*.js" | xargs grep'

GREEN="\[\033[0;32m\]"
BLUE="\[\033[0;34m\]"
MAGENTA="\[\033[0;35m\]"
CLEAR="\[\033[0m\]"

GIT_PS1_SHOWDIRTYSTATE="yes"
GIT_PS1_SHOWSTASHSTATE="no"
GIT_PS1_SHOWUNTRACKEDFILES="yes"
GIT_PS1_SHOWUPSTREAM="auto"

export PS1="\u@\h $GREEN\w$MAGENTA\$(__git_ps1 ' (%s)')\n$BLUE\$$CLEAR "
