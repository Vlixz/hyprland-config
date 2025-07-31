# ~/.config/tmux/vlixz-dev.tmux


#new-session -s vlixz-dev -n -d -x "$(tput cols)" -y "$(tput lines)"

# Create a new session named vlixz-dev if it doesn’t exist
# new-session -s vlixz-dev -n main -d
new-session -s vlixz-dev -n main -d -x "$(tput cols)" -y "$(tput lines)"


# Left
send-keys -t vlixz-dev:0 'nvim' C-m

# Split right vertically → right side (right pane is 20% width)
split-window -h -p 10 -t vlixz-dev:0

# In right pane, split horizontally → top and bottom (equal split by default)
split-window -v -p 80 -t vlixz-dev:0.1

# Top right
send-keys -t vlixz-dev:0.1 'spotify_player' C-m

# Focus nvim
select-pane -t vlixz-dev:0.0

attach-session -t vlixz-dev

