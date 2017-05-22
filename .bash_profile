#bash profile
export HOME=/Users/a_smolich
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LSCOLORS=ExFxBxDxCxegedabagacad
export CLICOLOR=1
export BLOCKSIZE=1k
export EDITOR=vim
export SVN_EDITOR=vim
export P4_EDITOR=vim
export GIT_EDITOR=vim
export FIGNORE=$FIGNORE:DS_Store

include () {
    [[ -f "$1" ]] && source "$1"
}

#colors
GREEN='\[\e[0;32m\]'
LIGHT_BLUE='\[\e[1;34m\]'
LIGHT_CYAN='\[\e[1;36m\]'
LIGHT_GRAY='\[\e[0;37m\]'
LIGHT_GREEN='\[\e[1;32m\]'
PURPLE='\[\e[0;35m\]'
RCOL='\[\e[0m\]'
RED='\[\e[0;31m\]'
WHITE='\[\e[1;37m\]'
YELLOW='\[\e[1;33m\]'

#java
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export PATH=${JAVA_HOME}/bin:$PATH

#gradle
export GRADLE_OPTS='-Xmx1g -XX:+CMSClassUnloadingEnabled -Xdebug -Dorg.gradle.daemon=true'
export JAVA_OPTS='-Xmx1g -XX:+CMSClassUnloadingEnabled' # -Xdebug -Xrunjdwp:transport=dt_socket,address=5555,server=y,suspend=n'
export ANT_OPTS='-Xmx1g -XX:+CMSClassUnloadingEnabled' # -Xdebug -Xrunjdwp:transport=dt_socket,address=9898,server=y,suspend=n'
export MAVEN_OPTS=$GRADLE_OPTS

#groovy
export GROOVY_HOME=/usr/local/opt/groovy/libexec

#grails
export GRAILS_HOME="/usr/local/opt/grails/libexec"

#perforce
export P4CONFIG=$HOME/.p4config

#manpath
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
export PATH=$MANPATH:$PATH

#gopath
export GOPATH="/usr/local/opt/go/libexec/bin"
export PATH=$GOPATH:$PATH

#mono
export MONO_GAC_PREFIX="/usr/local"

#path
export PATH="$HOME/dev/UnrealEngine/Engine/Binaries/Mac:$PATH"
export PATH="/usr/local/sbin:$PATH"

#aws
include $HOME/.aws_env

#prompt
PROMPT_COMMAND=__prompt_command
PS1='\[\e[1;32m\]\u\[\e[0;37m\]@\[\e[1;33m\]\h\[\e[0;37m\]:\[\e[1;36m\]\w\[\e[1;37m\]: \[\e[1;32m\]:) \[\e[0m\]$ '
PS2='> '
PS4='+ '

__prompt_command () 
{ 
    local EXIT="$?";
    PS1="";
    PS1+="${LIGHT_GREEN}\u${LIGHT_GRAY}@${YELLOW}\h${LIGHT_GRAY}:${LIGHT_CYAN}\w${WHITE}: ";
    if [ $EXIT != 0 ]; then
        PS1+="${RED}:( ${RCOL}\$ ";
    else
        PS1+="${LIGHT_GREEN}:) ${RCOL}\$ ";
    fi
}

include $HOME/.profile
include $HOME/.bashrc
include $HOME/.bash_aliases

include `brew --prefix`/etc/bash_completion

#terraform
include "$HOME/.bash_tf" 

#rmv
include "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH="$HOME/.rvm/bin:$PATH" # Add RVM to PATH for scripting

#qt
export PATH="/usr/local/Cellar/qt5/5.7/5.7/clang_64/bin:$PATH"

#pip should run in virtual env only
export PIP_REQUIRE_VIRTUALENV=true
source /usr/local/bin/virtualenvwrapper.sh

