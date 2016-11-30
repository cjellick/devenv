## Terminal
PS1="\W$ "

export EDITOR='mvim'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ll='ls -l'
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi


## Bash funcs
source "$HOME/.bashfuncs"

## Unix
alias grp='grep -Irs'

## Rancher/cattle
export CATTLE_URL=http://localhost:8080/v1
export CATTLE_HOME=$HOME/cattle-home
export CH=~/projects/cattle
alias CH="cd $CH"
alias cajdropdb="$CH/resources/content/db/mysql/drop_tables.sh; rm $CH/resources/content/db/mysql/cattle_dump*"
alias tr='docker exec -it rancher-agent tail -f /var/log/rancher/agent.log'
alias cleanstate="docker rm -fv rancher-agent-state; dm ssh docker10 'sudo rm -rf /var/lib/rancher/'"
alias dierc='pkill -9 rancher-catalog; pkill -9 rancher-compose-executor; pkill -9 scheduler; pkill -9 webhook-service'
alias cajtty='docker exec -it rancher-agent bash'

# Build tools and 10-acre on path
export PATH=$HOME/projects/build-tools/bin:$HOME/projects/10acre-ranch/bin:$CH/tools/development:$PATH


## Docker
# switching to using custom ros vm
# eval "$(docker-machine env docker10)"
export CATTLE_DOCKER_USE_BOOT2DOCKER=true
# Add docker machine repo to path incase we build custom docker-machine
export PATH=$HOME/gprojects/machine/src/github.com/docker/machine/bin:$PATH

alias dll='docker ps -a'
alias db='docker build'
alias dt='docker logs -f --tail=100'
alias de='docker exec -it'
alias dv='docker volume'
alias dm='docker-machine'
alias dc='docker-compose'
alias imageclean='docker rmi $(docker images -f dangling=true -qa)'


## Git
alias gd='git diff'
alias gs='git status'
alias ga='git add'
alias gccc='git checkout'
alias gh='git hist'
alias cajhs='history | grep'
alias gitsquash='git rebase -i'

## Java
alias ecl='/Applications/eclipse/eclipse'
export M2_HOME=/usr/local/apache-maven/apache-maven-3.2.3
export M2=$M2_HOME/bin
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_71.jdk/Contents/Home
export PATH=$PATH:$M2
export LIQUIBASE_HOME=/usr/local/Cellar/liquibase/3.3.0/libexec

## Python
# Started getting OpenSSL errors on python-agent flake8. Needed to upgrade OpenSSL and then add this
export CRYPTOGRAPHY_ALLOW_OPENSSL_098=1

## Golang
export GOPATH=$HOME/go
PATH=/usr/local/go/bin:$GOPATH/bin:$PATH

## GCE
# The next line updates PATH for the Google Cloud SDK.
source "$HOME/google-cloud-sdk/path.bash.inc"
# The next line enables bash completion for gcloud.
source "$HOME/google-cloud-sdk/completion.bash.inc"


## Github token
. ~/.creds_rc
