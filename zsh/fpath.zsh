#!/usr/bin/env zsh

#add each topic folder to fpath so that they can add functions and completion scripts
for topic_folder ($ZSH/*) if [ -d "$topic_folder" ]; then
  fpath=($topic_folder $fpath)
fi

# add brew zsh completions folder
fpath=(/usr/local/share/zsh/site-functions $fpath)
