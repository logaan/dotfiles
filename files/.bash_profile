# Little aliases
alias c='clear'
alias o='open .'

# Git
source ~/.git-completion.bash
export PS1='\[\e[33;33m\]\u@\h:\W$(__git_ps1 "(%s)")\$ \[\e[0m\]'
alias gitup='git branch | grep \* | awk "{print \$2}" | xargs git push origin'
alias gitdn='git branch | grep \* | awk "{print \$2}" | xargs git pull origin'

# Ruby version manager
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

