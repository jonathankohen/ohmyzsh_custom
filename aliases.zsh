# Open Config Files
alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"
alias alias.edit="code ~/.oh-my-zsh/custom/aliases.zsh"
alias zprofile="code ~/.zprofile"

alias '?=man'

# Processes
alias f="kill $PID && exit"
alias processes="ps aux"

# Source Reload
alias fd="source ~/.zprofile && source ~/.zshrc && clear"
alias rz="source ~/.zshrc"
alias rp="source ~/.zprofile"

# cd
alias ..="cd .."

# ls
alias ll="ls -AlhG"
alias tree.b="tree -L 1"

# tar
alias tarr="tar -pczf $1 $2"
alias untarr="tar -pxzf $1"
alias starr="sudo tar -pczf $1 $2"

# Finder
alias finder.showhidden="defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder"
alias finder.hidehidden="defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder"

# Docker
alias docker.start="open -a Docker"
alias docker.cc="docker ps -a -q | xargs docker rm"
alias docker.ci="docker images --filter dangling=true -q | xargs docker rmi"

# IP/Browser
alias myip="curl http://ipecho.net/plain; echo"
alias browserinfo="curl ipinfo.io/162.226.141.245\?token=9b793d154c0075; echo"

# Python
alias python='python3'
alias py='python3'
alias venv='python3 -m venv venv && source venv/bin/activate'
# GET and HEAD request handlers. This module can turn any directory of your system into a web server
alias test_server='python3 -m http.server 8000'
alias ppy="python3 manage.py"

# Git
alias undo-git-reset-head="git reset 'HEAD@{1}'" # undoes git reset HEAD~
alias gl="git log --graph --pretty=format:'%Cred%h%Creset %C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative --"

# Make zsh know about hosts already accessed by SSH
zstyle -e ':completion:*:(ssh|scp|sftp|rsh|rsync):hosts' hosts 'reply=(${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) /dev/null)"}%%[# ]*}//,/ })'

# Packages
alias sapu='sudo apt-get update'
alias redodeps='rm -rf node_modules/ && rm package-lock.json && npm install'

# Browser
alias chrome='open -a "Google Chrome"'

# grep
alias grep='grep --color=auto -n'
alias sgrep='grep -R -n -H -C 5 --exclude-dir={.git,.svn,CVS} '
alias t='tail -f'
alias -g G='| grep'

alias ping='ping -c 5'      # Pings with 5 packets, not unlimited
alias df='df -h'            # Disk free, in gigabytes, not bytes
alias du='du -h -c'         # Calculate total disk usage for a folder

# PostgreSQL
alias psql="/Library/PostgreSQL/13/scripts/runpsql.sh; exit"