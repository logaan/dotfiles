# Helper aliases
alias c='clear'
alias o='open .'
alias fn='find . -name'
alias ls='ls -G'
alias grep='grep -I'
alias vimp='(cat > /tmp/vimp && vim /tmp/vimp >/dev/tty </dev/tty && cat /tmp/vimp)'
alias lr="screen -t 'lein repl' lein repl"
# alias rake="bundle exec rake"
alias less="less -R"

alias sib="cd /Users/logaan/silverpond/bite/seeing_is_believing/"
alias 711="cd /Users/logaan/silverpond/seven-eleven/frm_711/"
alias lots="cd /Users/logaan/hacking/clojure/lists-of-things/"
alias asjp="cd /Users/logaan/silverpond/autosupplyjapan/asjprails"
alias asgm="cd /Users/logaan/silverpond/autosupplyjapan/greasemonkey/"

# MySQL
alias mysqlstart='sudo /opt/local/bin/mysqld_safe5 &'
alias mysqlstop='/opt/local/bin/mysqladmin5 -u root -p shutdown'

# Personal binaries
export PATH="/Users/logaan/bin:$PATH"

# Git
source ~/.git-completion.bash
PS1='\[\e[33;33m\]\u@\h:\W$(__git_ps1 "(%s)")[\j]\$ \[\e[0m\]'
alias gitup='git branch | grep \* | awk "{print \$2}" | xargs git push origin'
alias gitdn='git branch | grep \* | awk "{print \$2}" | xargs git pull --rebase origin'
alias gitts='git log --since="2 weeks ago" --date=short --format=format:"%Cgreen%h %Cblue%ad %Cred%an%n  %Creset%s%n"'

# Ruby version manager
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion

# MacPorts
export PATH=/usr/local/git/bin:/usr/local/bin:$PATH:/opt/local/bin:/opt/local/sbin

# MacVim
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'

# Screen
if [ "$TERM" = "screen" ]; then
  echo "[ screen is activated ]"
fi

# Clojurescript
export CLOJURESCRIPT_HOME="/Users/logaan/hacking/clojurescript/clojurescript"
export PATH=$CLOJURESCRIPT_HOME/bin:$PATH

# Everytime a program opens up nano I feel like it's insulting me
export EDITOR="/Applications/MacVim.app/Contents/MacOS/Vim"

# Unlimited bash history
export HISTSIZE=""

export PATH="/usr/local/Cellar/graphviz/2.28.0/bin:$PATH"


function vfn {
  vim `find . -name "$1"`
}

source /Users/logaan/.bash_completions/rake.sh


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# Cabal
export PATH="$HOME/Library/Haskell/bin:$PATH"

# NPM
export PATH="/usr/local/share/npm/bin:$PATH"

# Z allows for jumping to popular directories
source /Users/logaan/hacking/bash/z/z.sh

# Timesheets
export TIMESHEET_EMAIL=logan.campbell@silverpond.com.au
export TIMESHEET_PASSWORD=uCatHa2*

