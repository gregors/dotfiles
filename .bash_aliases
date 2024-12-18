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
alias grep='grep --color=auto'
alias hs="history | grep"


alias ackjs="ack --ignore-dir=coverage --ignore-dir=dist --ignore-dir=bundles --ignore-dir=node_modules --ignore-dir=static --ignore-dir=assets"
alias iack="ack --ignore-dir=spec --ignore-dir=log --ignore-dir=tmp --ignore-dir=coverage"
alias spec_ack="ack --ignore-dir=apps --ignore-dir=app --ignore-dir=log --ignore-dir=tmp --ignore-dir=coverage"
alias acke="ack --ignore-dir=deps --ignore-dir=cover --ignore-dir=log --ignore-dir=tmp --ignore-dir=cover"

alias unsafe_chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --disable-web-security  --user-data-dir="/tmp"'
alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'

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
alias dzero="find . -type f -size 0 -delete"

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
alias glog="git log -n 80 --abbrev-commit  --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %Cblue<%an>%Creset'"
alias glog2="git log --all -n 40 --abbrev-commit  --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %Cblue<%an>%Creset'"
alias glog3="git log --all --graph  -n 40 --abbrev-commit  --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %Cblue<%an>%Creset'"

#docker
alias dc="docker-compose"
alias dcps="docker-compose ps"
alias dcrebuild="docker-compose -d --no-deps --build"
alias dps="docker ps"
alias da="docker attach -it"

export EDITOR=vim

alias brick="ruby -run -e httpd . -p 9000"

#  enable history for Elixir's IEX
export ERL_AFLAGS="-kernel shell_history enabled"

# websockets
alias ws="wscat -c 'ws://localhost:4000/socket/websocket?vsn=2.0.0'"

# elixir
alias ism="iex -S mix"
alias md="mix help | grep dev"
alias mt="mix test"
