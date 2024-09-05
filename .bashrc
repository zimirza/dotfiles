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

export EDITOR="nvim"
export VISUAL="nvim"

set -o vi
#bind -m vi-command 'Control-l: clear-screen'
#bind -m vi-insert 'Control-l: clear-screen'
set show-mode-in-prompt on
set vi-cmd-mode-string "\1\e[2 q\2cmd"
set vi-ins-mode-string "\1\e[6 q\2ins"

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.local/share/bin"
export PATH="$PATH:$HOME/.local/share/node_modules/bin"

export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
export QT_AUTO_SCREEN_SET_FACTOR=0
export QT_SCALE_FACTOR=1
export QT_FONT_DPI=96
export GDK_SCALE=1
export GDK_DPI_SCALE=1
export GTK_THEME=Adwaita:dark
export GTK2_RC_FILES=/usr/share/themes/Adwaita-dark/gtk-2.0/gtkrc
export QT_STYLE_OVERRIDE=adwaita-dark

export PATH="~/perl5/bin${PATH:+:${PATH}}"; export PATH;
export PERL5LIB="~/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
export PERL_LOCAL_LIB_ROOT="~/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
export PERL_MB_OPT="--install_base \"~/perl5\""; export PERL_MB_OPT;
export PERL_MM_OPT="INSTALL_BASE=~/perl5"; export PERL_MM_OPT;

. "$HOME/.cargo/env"
export FNM_PATH="~/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="$FNM_PATH:$PATH"
  eval "`fnm env`"
fi
