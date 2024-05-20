typeset -U PATH path

# Config paths
export DATA_HOME=${DATA_HOME:="$HOME/.local/share"}
export CACHE_HOME=${CACHE_HOME:="$HOME/.cache"}
export CONFIG_HOME=${CONFIG_HOME:="$HOME/.config"}

# ZSH path
export ZDOTDIR="$CONFIG_HOME/zsh"

# Fixing path
export HISTFILE="$CACHE_HOME/zsh/history"

# ZPlug path
#export ZPLUG_HOME="$HOMEBREW_PREFIX/opt/zplug"
export ZPLUG_HOME=/opt/homebrew/opt/zplug

# Zsh-Z 
export ZSHZ_DATA="$CACHE_HOME/zsh/.z"

# Default Apps
export EDITOR="nano"
export VISUAL="nano"
export TERMINAL="iterm2"
export BROWSER="chrome"
#export READER="zathura"
#export VIDEO="mpv"
#export IMAGE="sxiv"
#export COLORTERM="truecolor"
#export OPENER="xdg-open"
#export PAGER="less"
#export WM="bspwm"

export PATH="/usr/local/sbin:$HOME/.jenv/bin:$PATH"
