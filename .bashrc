#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export LANG="ru_RU.UTF-8"
export LC_ALL="ru_RU.UTF-8"

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias vim="nvim"
alias mv="mv -i"
alias cp="cp -i"
alias rm="rm -i"

PS1='[\u@\h \W]\$ '

export HISTCONTROL="ignoreboth:erasedups:cd:cd*:ls:ls*:exit"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

export EDITOR="nvim"
export VISUAL="nvim"

set -o vi
#bind -m vi-command 'Control-l: clear-screen'
#bind -m vi-insert 'Control-l: clear-screen'
set show-mode-in-prompt on
set vi-cmd-mode-string "\1\e[2 q\2cmd"
set vi-ins-mode-string "\1\e[6 q\2ins"

ulimit -n 64000

### SHOPT
shopt -s autocd # change to named directory
shopt -s cdspell # autocorrects cd misspellings
shopt -s cmdhist # save multi-line commands in history as single line
shopt -s dotglob
shopt -s histappend # do not overwrite history
shopt -s expand_aliases # expand aliases
shopt -s checkwinsize # checks term size when bash regains control

# ignore upper and lowercase when TAB completion
bind "set completion-ignore-case on"

PATH="$PATH:$HOME/.local/bin"
PATH="$PATH:$HOME/.local/share/bin"
. "$HOME/.cargo/env"
PATH="$PATH:$HOME/.local/share/node_modules/bin"
PATH="$PATH:$HOME/Programming/depot_tools"

# gpg encryption
# verify signature for isos
alias gpg-check="gpg2 --keyserver-options auto-key-retrieve --verify"
# receive the key of a developer
alias gpg-retrieve="gpg2 --keyserver-options auto-key-retrieve --receive-keys"

export QT_AUTO_SCREEN_SET_FACTOR=0
export QT_SCALE_FACTOR=1
export QT_FONT_DPI=96
export GDK_SCALE=1
export GDK_DPI_SCALE=1
export GTK_THEME=Adwaita:dark
export GTK2_RC_FILES=/usr/share/themes/Adwaita-dark/gtk-2.0/gtkrc
export QT_STYLE_OVERRIDE=adwaita-dark

export EMSDK_QUIET="1"
. "$HOME/.config/emsdk/emsdk_env.sh"

alias musl-g++="g++"

source <(kubectl completion bash)
alias k=kubectl
complete -o default -F __start_kubectl k

# fnm
export PATH="~/.local/share/fnm:$PATH"
eval "`fnm env`"
