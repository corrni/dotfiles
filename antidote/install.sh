#!/bin/sh

if which brew >/dev/null 2>&1; then
	brew install antidote || brew upgrade antidote
else
	# curl -sL https://git.io/antidote | sh -s
	echo "Antidote requires Homebrew"
fi

antidote bundle < "$DOTFILES/antidote/bundles.txt" > ~/.zsh_plugins.sh
antidote update
