# Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'
alias ~='cd ~'

# Common
alias hello="echo Hello World"
alias zshrc="nano $XDG_CONFIG_HOME/zsh/.zshrc"
alias update="source $XDG_CONFIG_HOME/zsh/.zshrc"
alias updatepkg="sudo pacman -Syuu"
alias myip="curl http://ipecho.net/plain; echo"
alias dirs="dirs -v | head -10"
alias usage="du -h -d1"
alias sshdir="cd ~/.ssh"
alias runp="lsof -i "
alias md="mkdir"
alias src='source ~/.zshrc'

# LSD
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

# History
alias h='history'
alias hs='history | grep'
alias hsi='history | grep -i'

# Docker
alias docker-stop='docker-compose stop'
alias docker-restart='docker-compose restart'
alias docker-up='docker-compose up -d'
alias docker-rm='docker-compose rm --all'
alias docker-build='docker-compose build'

# Git Bare
alias gdf='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
alias gdfa='gdf add'
alias gdfc='gdf commit -m'
alias gdfp='gdf push'

## git aliases

function gc { git commit -m "$@"; }
alias gcm="git checkout master";
alias gs="git status";
alias gpull="git pull";
alias gf="git fetch";
alias gfa="git fetch --all";
alias gf="git fetch origin";
alias gpush="git push";
alias gd="git diff";
alias ga="git add .";
alias gb="git branch";
alias gbr="git branch remote"
alias gfr="git remote update"
alias gbn="git checkout -B "
alias grf="git reflog";
alias grh="git reset HEAD~" # last commit
alias gac="git add . && git commit -a -m "
alias gsu="git gpush --set-upstream origin "
alias glog="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --branches"

# npm
alias ni="npm install";
alias nrs="npm run start -s --";
alias nrb="npm run build -s --";
alias nrd="npm run dev -s --";
alias nrt="npm run test -s --";
alias nrtw="npm run test:watch -s --";
alias nrv="npm run validate -s --";
alias rmn="rm -rf node_modules";
alias flush-npm="rm -rf node_modules && npm i && echo NPM is done"
