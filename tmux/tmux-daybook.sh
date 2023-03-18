#!/usr/bin/env zsh

tmux_running=$(pgrep tmux)

if [[ -z $TMUX ]] && [[ -z $tmux_running ]]; then
  tmux new-session -s daybook -c ~/notes "nvim daybook.txt"
  exit 0
fi

if ! tmux has-session -t=daybook 2> /dev/null; then
  tmux new-session -ds daybook -c ~/notes "nvim daybook.txt"
fi

tmux switch-client -t daybook

