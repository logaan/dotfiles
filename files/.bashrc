# Helper aliases
alias c='clear'
alias o='open .'
alias fn='find . -name'
alias ls='ls -G'
alias grep='grep -I'

alias lots="cd /Users/logaan/hacking/clojure/lists-of-things/"
alias dnrs="cd /Users/logaan/thoughtworks/ausregistry/dnrs2/"
alias perf="cd /Users/logaan/thoughtworks/ausregistry/performance/"

# Git
source ~/.git-completion.bash
PS1='\[\e[33;33m\]\u@\h:\W$(__git_ps1 "(%s)")\$ \[\e[0m\]'
alias gitup='git branch | grep \* | awk "{print \$2}" | xargs git push origin'
alias gitdn='git branch | grep \* | awk "{print \$2}" | xargs git pull --rebase origin'

# Ruby version manager
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion

# MacPorts
export PATH=/usr/local/git/bin:/usr/local/bin:$PATH:/opt/local/bin:/opt/local/sbin

# MacVim
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'

# Reia
export PATH="/Users/logaan/hacking/reia/reia/bin:$PATH"

# Screen
if [ "$TERM" = "screen" ]; then
  echo "[ screen is activated ]"
fi

# Clojurescript
export CLOJURESCRIPT_HOME="/Users/logaan/hacking/clojurescript/clojurescript"
export PATH=$CLOJURESCRIPT_HOME/bin:$PATH

# Everytime a program opens up nano I feel like it's insulting me
export EDITOR="vim"

# Increased bash history
export HISTSIZE=1000

export PATH="/usr/local/Cellar/graphviz/2.28.0/bin:$PATH"


function vfn {
  vim `find . -name "$1"`
}

source /Users/logaan/.bash_completions/rake.sh

