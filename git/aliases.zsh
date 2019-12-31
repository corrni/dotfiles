#!/bin/sh

alias g='git'

alias gcl='git clone'

alias glg="git log --graph --decorate --oneline --abbrev-commit"
alias gp='git push origin HEAD'
alias gpa='git push origin --all'

alias gd='git diff'
alias gdc='git diff --cached'

alias gco='git checkout'
alias gb='git branch'
alias gbd='git branch --delete'
alias gbD='git branch --delete --force'

alias ga='git add'
alias gaa='git add -A'
alias gad='ga . && gdc'
alias gcm='git commit -m'
alias gc='git commit'
alias gca='git commit -a'

alias gs='git status -sb'
alias gcb='git-copy-branch-name'
alias gpr='gp && open-pr'

# .gitignore generator
gi() {
  curl -s "https://www.gitignore.io/api/$*";
}
