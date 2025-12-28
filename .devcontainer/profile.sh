echo "*** environment loaded from ${BASH_SOURCE[0]} via ${BASH_SOURCE[1]}"

alias gs="git status"
alias be="bundle exec"
alias migrate='rake db:migrate && rake db:migrate RAILS_ENV=test'
alias ..='cd ..'
alias ...='cd ../..'
alias ll='ls -GFHAf -1'
alias gpo="git push origin"

export PATH=/workspace/bin:$PATH
