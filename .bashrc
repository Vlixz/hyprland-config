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

# exports
export CC=/usr/bin/clang
export CXX=/usr/bin/clang++
export GTK_THEME=Arc-Dark
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

eval "$(oh-my-posh init bash --config '~/dotfiles/.config/oh-my-posh/amro.omp.json')"

# alacritty config
source /home/vlixz/Downloads/alacritty/extra/completions/alacritty.bash
