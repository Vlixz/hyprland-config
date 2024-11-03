#
# ~/.bashrc
#

hyfetch 

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
. "$HOME/.cargo/env"

if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi


export GTK_THEME="Arc-dark"
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

eval "$(oh-my-posh init bash --config '~/dotfiles/.config/oh-my-posh/amro.omp.json')"
