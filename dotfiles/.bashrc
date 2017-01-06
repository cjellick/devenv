## Terminal
PS1="\W$ "

# General
alias ll='ls -l'
export VISUAL=vim

## Bash funcs
source "$HOME/.bashfuncs"

## Rancher/cattle
export CATTLE_URL=http://localhost:8080/v2-bet
export CATTLE_HOME=$HOME/cattle-home
export CH=~/projects/cattle
alias CH="cd $CH"
alias cajdropdb="$CH/resources/content/db/mysql/drop_tables.sh; rm $CH/resources/content/db/mysql/cattle_dump*"
# TODO Convert to killall
alias dierc='killall -9 rancher-auth-service 2>/dev/null; killall -9 rancher-catalog 2>/dev/null; killall -9 rancher-compose-executor 2>/dev/null; killall -9 scheduler 2>/dev/null 2>/dev/null; killall -9 webhook-service 2>/dev/null'


# Build tools and 10-acre on path
export PATH=$HOME/projects/build-tools/bin:$HOME/projects/10acre-ranch/bin:$CH/tools/development:$PATH

## Docker
alias dll='docker ps -a'
alias db='docker build'
alias dt='docker logs -f --tail=100'
alias de='docker exec -it'
alias dv='docker volume'
alias dm='docker-machine'
alias dc='docker-compose'
alias imageclean='docker rmi $(docker images -f dangling=true -qa)'
source ~/.docker-completion.bash
# TODO Reenable if you go back to using machine
# Add docker machine repo to path incase we build custom docker-machine
#export PATH=$HOME/gprojects/machine/src/github.com/docker/machine/bin:$PATH

## Git
source ~/.git-completion.bash
alias gd='git diff'
alias gs='git status'
alias ga='git add'

## Java
#export M2_HOME=/usr/local/apache-maven/apache-maven-3.2.3
#export M2=$M2_HOME/bin
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_71.jdk/Contents/Home
#export PATH=$PATH:$M2
#export LIQUIBASE_HOME=/usr/local/Cellar/liquibase/3.3.0/libexec

## Python
# TODO Figure out if this is still needed
# Started getting OpenSSL errors on python-agent flake8. Needed to upgrade OpenSSL and then add this
#export CRYPTOGRAPHY_ALLOW_OPENSSL_098=1

## Golang
export GOPATH=$HOME/go
PATH=/usr/local/go/bin:$GOPATH/bin:$PATH

## GCE
# TODO Reenable when and if we need GCE completion
# The next line updates PATH for the Google Cloud SDK.
#source "$HOME/google-cloud-sdk/path.bash.inc"
# The next line enables bash completion for gcloud.
#source "$HOME/google-cloud-sdk/completion.bash.inc"


## Github token
. ~/.creds_rc



setxkbmap -option ctrl:swapcaps

# Never use
#alias ..='cd ..'
#alias ...='cd ../..'
#alias ....='cd ../../..'

# TODO What did I have completion for?
#if [ -f $(brew --prefix)/etc/bash_completion ]; then
#    . $(brew --prefix)/etc/bash_completion
#fi

#alias tr='docker exec -it rancher-agent tail -f /var/log/rancher/agent.log'
#alias cleanstate="docker rm -fv rancher-agent-state; dm ssh docker10 'sudo rm -rf /var/lib/rancher/'"
#alias cajtty='docker exec -it rancher-agent bash'

#alias gccc='git checkout'
#alias gh='git hist'
#alias gitsquash='git rebase -i'
