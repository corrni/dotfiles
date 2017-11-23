#!/bin/sh

export GOPATH="$PROJECTS/Go"
[ ! -d "$GOPATH" ] &&  mkdir -p "$GOPATH/bin"
[ ! -d "$GOPATH/src/github.com/" ] && mkdir -p "$GOPATH/src/github.com/"
export PATH="$GOPATH/bin:$PATH"

# Homebrew setup recommendation
export PATH=$PATH:/usr/local/opt/go/libexec/bin
