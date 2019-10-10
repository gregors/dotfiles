# sqlite on osx via brew
#export PATH="/usr/local/opt/sqlite/bin:$PATH"
#export LDFLAGS="-L/usr/local/opt/sqlite/lib"
#export CPPFLAGS="-I/usr/local/opt/sqlite/include"
#export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/opt/sqlite/lib/pkgconfig

source ~/dot-files/bash/aliases

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

export NORMAL="$(tput sgr0)"
export BLACK="$(tput setaf 0)"
export RED="$(tput setaf 1)"
export GREEN="$(tput setaf 2)"
export YELLOW="$(tput setaf 3)"
export BLUE="$(tput setaf 4)"
export MAGENTA="$(tput setaf 5)"
export CYAN="$(tput setaf 6)"
export WHITE="$(tput setaf 7)"
export GRAY="$(tput setaf 244)"

parse_git_dirty() {
  FLAGS=('--porcelain' '--ignore-submodules=dirty')
  STATUS=$(git status ${FLAGS} 2> /dev/null | tail -n1)
  if [[ -n $STATUS ]]; then
    echo "* "
  else
    echo ""
  fi
}

git_current_sha() {
  current_sha=$(git rev-parse --verify HEAD 2> /dev/null )
  if [[ -n $current_sha ]]; then
    echo ${current_sha::6}
  else
    echo ""
  fi
}

git_branch() {
  branch=$(git rev-parse --abbrev-ref HEAD 2> /dev/null )
  if [[ -n $branch ]]; then
    echo $branch
  else
    echo ""
  fi
}

export PS1="\u $GREEN\W$YELLOW \$(git_branch)$NORMAL $GRAY\$(git_current_sha)$NORMAL $RED\$(parse_git_dirty)$NORMAL\n$ "

export HISTIGNORE="...:..:pwd:ls:ll:cd:history:cd -:dc:dps:exit:fg:gs:gd:gt:git gui:git push:gp:git add .:git push:htop:jobs:tree:vim"
HISTSIZE=10000
HISTFILESIZE=10000

# make forward search work in reverse-i-search using control+s
stty -ixon
