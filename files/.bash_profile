# Helper aliases
alias c='clear'
alias o='open .'
alias fn='find . -name'

# Git
source ~/.git-completion.bash
PS1='\[\e[33;33m\]\u@\h:\W$(__git_ps1 "(%s)")\$ \[\e[0m\]'
alias gitup='git branch | grep \* | awk "{print \$2}" | xargs git push origin'
alias gitdn='git branch | grep \* | awk "{print \$2}" | xargs git pull origin'

# Ruby version manager
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion

# MacPorts
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

# MacVim
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'

