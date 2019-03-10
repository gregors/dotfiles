source ~/dot-files/bash/aliases

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

export HISTIGNORE="...:..:pwd:ls:ll:cd:history:cd -:dc:dps:exit:fg:gs:gd:gt:git gui:git push:gp:htop:jobs:tree:vim:yarn test"

# make forward search work in reverse-i-search using control+s
stty -ixon
