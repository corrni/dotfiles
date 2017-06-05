#!/bin/sh

alias npis='npm install --save'
alias npisd='npm install --save-dev'
alias npig='npm install -g'
alias npit='npm init'
alias npity='npm init -y'
alias npi='npm install'

### Yarn
#
alias yga='yarn global add'
alias ya='yarn add'
alias yad='yarn add -D'

# instead of 'npm run'
alias yr='f() { yarn run $1 --silent };f'

alias yrs='f() { yarn start $1 --silent };f'
alias yrt='f() { yarn test $1 --silent };f'

alias yrl='f() { yarn run lint $1 --silent };f'
