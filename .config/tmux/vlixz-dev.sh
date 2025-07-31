#!/bin/sh

tmux new-session -s vlixz-dev -d -x "$(tput cols)" -y "$(tput lines)"
tmux send-keys -t vlixz-dev:0.0 'nvim' C-m
tmux split-window -h -p 25 -t vlixz-dev:0.0
tmux split-window -v -t vlixz-dev:0.1
tmux send-keys -t vlixz-dev:0.1 'spotify_player' C-m
tmux select-pane -t vlixz-dev:0.0
tmux attach -t vlixz-dev
