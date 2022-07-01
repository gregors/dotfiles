export PATH="/usr/local/opt/gnu-getopt/bin:$PATH"
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
export PATH="/usr/local/opt/openjdk/bin:$PATH"
export PATH="/usr/local/opt/tcl-tk/bin:$PATH"

_myos="$(uname)"

#bash
alias ..="cd .."
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias c="clear"
alias gmail="open https://gmail.com"
alias gcal="open https://calendar.google.com/calendar/render#main_7"
alias h="history 1 | grep"
alias ackjs="ack --ignore-dir=coverage --ignore-dir=dist --ignore-dir=bundles --ignore-dir=node_modules --ignore-dir=static --ignore-dir=assets"
alias unsafe_chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --disable-web-security  --user-data-dir="/tmp"'

case $_myos in
  Linux) alias ll="ls -lia --color";;
  *) alias ll="ls -lia -G";;
esac

alias l="ll"

case $_myos in
 Linux) alias pbcopy="xclip -sel clip ";;
esac

case $_myos in
  Linux) alias ports='netstat -tulanp';; #show open ports
  *) alias ports='netstat -atp tcp | grep -i "listen"';;
esac

alias apt-get="sudo apt-get"
alias agi="sudo apt-get install"
alias agu="sudo apt-get update && sudo apt-get upgrade"

#git
alias g="git"
alias gb="git branch"
alias gbv="git branch --verbose"
alias gd="git diff"
alias gdc="git diff --cached"
alias gs="git status"
alias gp="git pull"
alias gls="git diff --name-only"
alias gfull="git stash;git checkout master;git pull;bundle install;be rake db:setup;be rake db:test:prepare"
alias gt="git log --graph --since='1 Day Ago' --abbrev-commit --date=relative --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %Cblue<%an>%Creset'"
alias glog="git log -n 60 --abbrev-commit  --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %Cblue<%an>%Creset'"
alias glog2="git log --all -n 60 --abbrev-commit  --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %Cblue<%an>%Creset'"
alias glog3="git log --all --graph  -n 60 --abbrev-commit  --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %Cblue<%an>%Creset'"

#rails
alias br="bundle exec rspec"
alias be="bundle exec"
alias rt="rake -T"
alias rr="rake routes"
alias drc="docker run --rm -it railsapp bundle exec rails c"
alias qspec="RUBYOPT=\"-W0\" be rake spec"
alias iack="ack --ignore-dir=spec --ignore-dir=log --ignore-dir=tmp --ignore-dir=coverage"
alias spec_ack="ack --ignore-dir=apps --ignore-dir=app --ignore-dir=log --ignore-dir=tmp --ignorew-dir=coverage"

#bundler
alias b="bundle install"

#docker
alias dc="docker-compose"
alias dps="docker ps"
alias da="docker attach"

export EDITOR=vim

alias brick="ruby -run -e httpd . -p 9000"

#  enable history for Elixir's IEX
export ERL_AFLAGS="-kernel shell_history enabled"

# websockets
alias ws="wscat -c 'ws://localhost:4000/socket/websocket?vsn=2.0.0'"

export HISTSIZE=10000
export SAVEHIST=10000

export HISTFILE=~/.zhistory
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_DUPS

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

# parse_git_dirty() {
#  FLAGS=('--porcelain' '--ignore-submodules=dirty')
#  STATUS=$(git status ${FLAGS} 2> /dev/null | tail -n1)
#  if [[ -n $STATUS ]]; then
#    echo "* "
#  else
#    echo ""
#  fi
#}
#
#git_current_sha() {
#  current_sha=$(git rev-parse --verify HEAD 2> /dev/null )
#  if [[ -n $current_sha ]]; then
#    echo ${current_sha::6}
#  else
#    echo ""
#  fi
#}
#
#git_branch() {
#  branch=$(git rev-parse --abbrev-ref HEAD 2> /dev/null )
#  if [[ -n $branch ]]; then
#    echo $branch
#  else
#    echo ""
#  fi
#}

#export PS1="\u $GREEN\W$YELLOW \$(git_branch)$NORMAL $GRAY\$(git_current_sha)$NORMAL $RED\$(parse_git_dirty)$NORMAL\n$ "
bindkey -e # for emacs
