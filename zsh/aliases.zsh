#!/bin/sh

# dotfiles reloading
__reload_dotfiles() {
  PATH="$(command -p getconf PATH):/usr/local/bin"
  # shellcheck disable=SC1090
  source $HOME/.zshrc
  cd . || return 1
}
alias reload!='__reload_dotfiles'
alias souz='source $HOME/.zshrc'

# shell nice-to-haves
alias rmf='rm -rf'
alias rmt='rmtrash'
alias pwdc='pwd | pbcopy'

# virtualenvwrapper
alias wo='workon'

# Elixir
alias iem='iex -S mix'
alias iemp='iex -S mix phx.server'
# alias iemp='iex -S mix phoenix.server'
alias mt='mix test'
alias mtt='mix test --trace'
alias mto='mix test --only focus'
