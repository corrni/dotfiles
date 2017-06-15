#!/bin/sh

alias g='git'

# cloning from github
alias gch='f() { git clone git@github.com:${1} };f'
alias gchl='f() { git clone https://github.com/${1} };f'

alias gcl='git clone'

alias gl='git pull --prune'
alias glg="git log --graph --decorate --oneline --abbrev-commit"
alias gp='git push origin HEAD'
alias gpa='git push origin --all'

alias gd='git diff'
alias gco='git checkout'
alias gb='git branch'

alias ga='git add'
alias gaa='git add -A'
alias gcm='git commit -m'
alias gc='git commit'
alias gca='git commit -a'
alias gcam='git commit -a -m'

alias gs='git status -sb'
alias gcb='git-copy-branch-name'
alias gpr='gp && open-pr'

alias gf='git flow' # git-flow

# .gitignore generator
gi() {
  curl -s "https://www.gitignore.io/api/$*";
}
