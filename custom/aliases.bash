#!/bin/bash

# Color ls:
colorflag="--color"
alias ls="command ls -h ${colorflag}"
alias l="ls -lF ${colorflag}" # all files, in long format
alias la="ls -a ${colorflag}" # all files inc dotfiles, in long format
alias lsd='ls -lF ${colorflag} | grep "^d"' # only directories
alias ll="ls -alFh ${colorflag}"

# Quicker navigation:
alias ..="cl .."
alias ...="cl ../.."
alias ....="cl ../../.."
alias .....="cl ../../../.."

# Always use apt
alias apt-get="apt"

# Color grep:
alias grep="grep --color=auto"

# Grepping for pesky unicode characters:
alias unigrep='grep -P "[^\x00-\x7F]"'

alias skim="(head -5; tail -5) <"

# Sort files by size:
alias sortbysize="ls -s | sort -n"

# Say something with speech synthesis:
alias say="espeak"

# Show where you copy:
alias cp="cp -v"

# Make it no matter what:
alias mkdir="mkdir -p"

alias trim_whitespace="sed -i 's/[ \t]*$//' "

alias rcopy="rsync -az --stats --progress --delete"

alias ssh="ssh -A"

alias dt='date "+%F %T"'

# Quickly search for file:
alias qfind="find . -name "

# Public facing ip address:
alias myip="curl ip.appspot.com"

# Your local ip address:
alias localip="ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'"

# Show all open TCP/IP sockets:
alias netCons="lsof -i"

# Flush out the DNS Cache:
alias flushDNS="dscacheutil -flushcache"

# Display open sockets:
alias lsock="sudo /usr/sbin/lsof -i -P"

# Display only open UDP sockets:
alias lsockU="sudo /usr/sbin/lsof -nP | grep UDP"

# Display only open TCP sockets:
alias lsockT="sudo /usr/sbin/lsof -nP | grep TCP"

# Get info on connections for en0:
alias ipInfo0="ipconfig getpacket en0"

# Get info on connections for en1:
alias ipInfo1="ipconfig getpacket en1"

# All listening connections:
alias openPorts="sudo lsof -i | grep LISTEN"

# All ipfw rules inc/ blocked IPs:
alias showBlocked="sudo ipfw list"

# Removes a bunch of crap from your finder:
#alias cleanup="find . -name '*.DS_Store' -type f -ls -delete && find . -name 'Thumbs.db' -type f -ls -delete"

# Weather from my current location:
alias weather="curl -s 'http://rss.accuweather.com/rss/liveweather_rss.asp?imperial=1&locCode=en|us|springdfield-or|97477' | sed -n '/Currently:/ s/.*: \(.*\): \([0-9]*\)\([CF]\).*/\2°\3, \1/p'"
alias weatherc="curl -s 'http://rss.accuweather.com/rss/liveweather_rss.asp?metric=1&locCode=en|us|springdfield-or|97477' | sed -n '/Currently:/ s/.*: \(.*\): \([0-9]*\)\([CF]\).*/\2°\3, \1/p'"

alias tolowercase="pbpaste | tr "[:upper:]" "[:lower:]" | pbcopy"
alias touppercase="pbpaste | tr "[:lower:]" "[:upper:]" | pbcopy"

# Only show dot files:
alias lsh="ls -ad .??*"

#alias restartdock="killall -KILL Dock"

# Opens up the IOS Simulator without launching xcode:
#alias iossimulator="(cd /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/ && open -a iPhone\ Simulator.app)"

# Default Python:
#alias python=python3
# Default pip:
#alias pip=pip3

# XAMPP shortcuts:
alias xampp="sudo /Applications/XAMPP/xamppfiles/xampp restart"
alias xampp_stop="sudo /Applications/XAMPP/xamppfiles/xampp stop"
alias xampp_start="sudo /Applications/XAMPP/xamppfiles/xampp start"
alias xo='function __xo() { xampp && open "http://"$1; }; __xo'

# Apache Tomcat start:
# $ tomcat
# $ tomcat start
# Tomcat stop:
# $ tomcat stop
alias tomcat=catalina

# List Atom packages:
alias atompkgs="apm list --installed --bare"

# Quick Look!
# $ cd /Library/Desktop\ Pictures
# $ qlf "Jaguar Aqua Graphite.jpg"
alias qlf='qlmanage -p "$@" >& /dev/null'

# Open current directory in Finder.app and Atom.app:
#alias go="open . && atom ."

# Common ssh commands
alias websites="ssh twobitra@twobitranch.net"
alias bot="ssh -vvv -i ~/.ssh/id_rsa_jnbot.pem ec2-user@ec2-54-153-39-73.us-west-1.compute.amazonaws.com"
alias pi="ssh -i ~/.ssh/id_ed25519_pi pi@10.0.0.180"

# Fuck
eval "$(thefuck --alias fuck)"

# Vim in bash
alias :q="exec <&-"

# Bootcamp Docker
alias bootcamp="docker-compose up -d; docker-compose run -p 8080:8080 dobc bash"

# Jekyll Docker
alias jbuild="docker run --name jekyll --rm --volume=\"$PWD:/srv/jekyll\" -it jekyll/jekyll:$JEKYLL_VERSION jekyll build --trace"
alias jserve="docker run --name jekyll --rm -dp 4000:4000 --volume=\"$PWD:/srv/jekyll\" -it jekyll/jekyll:$JEKYLL_VERSION jekyll serve --watch --drafts"
alias jstop="docker stop jekyll"

# JustNoBot Docker
alias bbuild="docker build . -t marajade2/justnobot_image"
alias testbuild="docker build . --target tester -t testbot_image"
alias bnetwork="docker run --rm --name botnetwork -d --network justnobot --network-alias postgresql -v justnobot-postgresql:/var/lib/postgresql/data -e POSTGRES_PASSWORD=secret -e POSTGRES_DB=justno postgres"
alias testnetwork="docker run --rm --name testnetwork -d --network testbot --network-alias postgresql -v justnobot-postgresql:/var/lib/postgresql/data -e POSTGRES_PASSWORD=secret -e POSTGRES_DB=test_bot postgres"
alias bserve="docker run --rm --name justnobot -v justnodb:/var/lib/postgresql/data --network justnobot justnobot_image"
alias btest="docker run --rm --name testbot -v justnodb:/var/lib/postgresql/data --network testbot testbot_image"
alias bstop="docker stop justnobot"

# C++ compiling
alias cg++="g++ -Wall -Weffc++ -Wextra -Wsign-conversion -Werror -pedantic-errors -std=c++17"
