#!/bin/sh

# dotfiles reloading
__reload_dotfiles() {
  PATH="$(command -p getconf PATH):/usr/local/bin"
  # shellcheck disable=SC1090
  . ~/.zshrc
  cd . || return 1
}
alias reload!='__reload_dotfiles'

# easier directory deletion
alias rmf='rm -rf'
