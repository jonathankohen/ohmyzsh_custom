# Functions - My perfected ls command!
function cll() { ls -AlhG "$@" | awk '{k=0;for(i=0;i<=8;i++)k+=((substr($1,i+2,1)~/[rwx]/)*2^(8-i));if(k)printf(" %0o ",k);print}' | cut -c 1-5,21-; }

function cat() {                      
    pygmentize -g $1 | nl -b a | less -Rai
}

function acp() {
    git add .
    git commit -m "$1"
    git push
}

function finder() {
  local open_cmd

  # define the open command
  case "$OSTYPE" in
    darwin*)  open_cmd='open' ;;
    cygwin*)  open_cmd='cygstart' ;;
    linux*)   [[ "$(uname -r)" != *icrosoft* ]] && open_cmd='nohup xdg-open' || {
                open_cmd='cmd.exe /c start ""'
                [[ -e "$1" ]] && { 1="$(wslpath -w "${1:a}")" || return 1 }
              } ;;
    msys*)    open_cmd='start ""' ;;
    *)        echo "Platform $OSTYPE not supported"
              return 1
              ;;
  esac

  ${=open_cmd} "$@" &>/dev/null
}

function alias.content() {
    alias_value "$1" || echo "$1"
}

function dict() {
    grep "$@" /usr/share/dict/words
}

function gitignore() {
  if [ -e .gitignore ];then
    echo "$@" >> .gitignore
  else
    echo ".gitignore doesn't exist here"
    return 1
  fi
}