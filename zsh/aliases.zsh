#!/bin/sh

alias reload!='exec "$SHELL" -l'

# shell nice-to-haves
alias rmf='rm -rf'
alias rmt='rmtrash'
alias pwdc='pwd | pbcopy'

# virtualenvwrapper
alias wo='workon'

# Elixir
alias iem='iex -S mix'
alias iemp='iex -S mix phx.server'
alias mt='mix test'
alias mtt='mix test --trace'
alias mto='mix test --only focus'

# Todoist CLI
alias t='todoist'

# Misc dev tools
alias irdev='infisical run --env=dev'
alias irstaging='infisical run --env=staging'
alias irprod='infisical run --env=prod'

eval "$(thefuck --alias)"
