#
# ~/.bashrc
#

[[ $- != *i* ]] && return

ulimit -n 64000

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

shopt -s histappend
shopt -s cmdhist
shopt -s dotglob
shopt -s expand_aliases
shopt -s checkwinsize

case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

set -o vi
#bind -m vi-command 'Control-l: clear-screen'
#bind -m vi-insert 'Control-l: clear-screen'
set show-mode-in-prompt on
set vi-cmd-mode-string "\1\e[2 q\2cmd"
set vi-ins-mode-string "\1\e[6 q\2ins"

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"
