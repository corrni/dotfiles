#!/usr/bin/env zsh

# load ssh-agent if it's not already running
# [http://bit.ly/24eN87x]
if [ ! -S ~/.ssh/ssh_auth_sock ]; then
  eval `ssh-agent`
  ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
fi
export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock
ssh-add -l | grep "The agent has no identities" && ssh-add

# Don't ask ssh password all the time
# if [ "$(uname -s)" = "Darwin" ]; then
# 	git config --global credential.helper osxkeychain
# else
# 	git config --global credential.helper cache
# fi

# better diffs
if which diff-so-fancy >/dev/null 2>&1; then
	git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"
fi

# use vscode as mergetool
if which code >/dev/null 2>&1; then
	git config --global merge.tool vscode
	git config --global mergetool.vscode.cmd "code --wait $MERGED"
fi
