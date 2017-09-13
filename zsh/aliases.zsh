#!/bin/sh

# dotfiles reloading
__reload_dotfiles() {
  PATH="$(command -p getconf PATH):/usr/local/bin"
  # shellcheck disable=SC1090
  source $HOME/.zshrc
  cd . || return 1
}
alias reload!='__reload_dotfiles'

# shell nice-to-haves
alias rmf='rm -rf'
alias rmt='rmtrash'
alias pwdc='pwd | pbcopy'

# virtualenvwrapper
alias wo='workon'

# Mix tasks
alias iem='iex -S mix'
alias iemp='iex -S mix phx.server'
# alias iemp='iex -S mix phoenix.server'
