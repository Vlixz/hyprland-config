#
# ~/.bashrc
#

hyfetch

[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
. "$HOME/.cargo/env"

if [ -d "$HOME/.local/bin" ]; then
  PATH="$HOME/.local/bin:$PATH"
fi

# export GTK_THEME=Arc-Dark
# export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

eval "$(oh-my-posh init bash --config '~/dotfiles/.config/oh-my-posh/amro.omp.json')"

# tmux config
if command -v tmux &>/dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  tmux has-session -t vlixz-dev 2>/dev/null
  if [ $? != 0 ]; then
    exec ~/dotfiles/.config/tmux/vlixz-dev.sh
  else
    tmux attach -t vlixz-dev
  fi
fi

# alacritty config
source /home/vlixz/Downloads/alacritty/extra/completions/alacritty.bash
