### ---- history configuration ---- ###
HISTSIZE=500000
HISTFILE="$CACHE_HOME/zsh/.zsh_history"
SAVEHIST=100000

setopt appendhistory
setopt share_history
setopt hist_ignore_all_dups
# ignores all commands starting with a blank space. Userful for passwords
setopt hist_ignore_space
