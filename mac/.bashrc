export PATH="/usr/local/bin:$PATH:/usr/local/mysql/bin:/usr/local/sbin"

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

alias findcss='find . -name "*.css" | xargs grep'
alias findsass='find . -name "*.sass" | xargs grep'
alias findhtml='find . -name "*.html" | xargs grep'
alias findpy='find . -path "./applications/*/migrations" -prune -o -name "*.py" | xargs grep'
alias findjs='find . -name "*.js" | xargs grep'
alias phpserv='/usr/local/php5/bin/php -S 127.0.0.1:8000'
alias showtests='find . -name "*tests.py" -print'
alias brooklyn='cd ~/Sites/brooklyndelta'
alias rmpyc='find . -name "*.pyc" -delete'
alias bbox='cd ~/broadwaybox'
alias box='workon bbox'

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

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
