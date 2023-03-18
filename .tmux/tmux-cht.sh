#!/usr/bin/env zsh

selected=`cat ~/.tmux/tmux-cht-languages ~/.tmux/tmux-cht-command | fzf`
if [[ -z $selected ]]; then
  exit 0
fi

printf "Enter query: "
read query

if grep -qs "$selected" ~/.tmux/tmux-cht-languages; then
  tmux neww zsh -c "curl -s cht.sh/$selected/$query | less"
else
  tmux neww zsh -c "curl -s cht.sh/$selected~$query | less"
fi
