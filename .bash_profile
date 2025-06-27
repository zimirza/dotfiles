#
# ~/.bash_profile
#

export HISTCONTROL="ignoreboth:erasedups:cd:cd*:ls:ls*:exit"
export HISTFILESIZE=2000
export HISTSIZE=1000

export LANG="ru_RU.UTF-8"
export LC_ALL="ru_RU.UTF-8"

export PS1='[\u@\h \W]\$ '

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

export TERM="st"
export TERMINAL="st"

export EDITOR="vi"
export VISUAL="vi"
export GIT_EDITOR="vi"

export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.local/share/bin"

[[ -f ~/.bashrc ]] && . ~/.bashrc
