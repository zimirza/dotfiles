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

export LANG="ru_RU.UTF-8"
export LC_ALL="ru_RU.UTF-8"

PS1='[\u@\h \W]\$ '

export HISTCONTROL="ignoreboth:erasedups:cd:cd*:ls:ls*:exit"
export HISTFILESIZE=2000
export HISTSIZE=1000
shopt -s histappend
shopt -s cmdhist
shopt -s dotglob
shopt -s expand_aliases
shopt -s checkwinsize

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

export TERM="st"
export TERMINAL="st"

case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

export EDITOR="vi"
export VISUAL="vi"

set -o vi
#bind -m vi-command 'Control-l: clear-screen'
#bind -m vi-insert 'Control-l: clear-screen'
set show-mode-in-prompt on
set vi-cmd-mode-string "\1\e[2 q\2cmd"
set vi-ins-mode-string "\1\e[6 q\2ins"

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.local/share/bin"

export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'