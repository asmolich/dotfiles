#bash profile
export HOME=/Users/antonsmolich
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

#gradle
export GRADLE_OPTS='-Xmx1g -XX:MaxPermSize=300m -XX:+CMSClassUnloadingEnabled -Xdebug -Xrunjdwp:transport=dt_socket,address=9999,server=y,suspend=n -Dorg.gradle.daemon=true'

#perforce
export P4CONFIG=.p4config

export PATH='$HOME/.gvm/vertx/current/bin:$HOME/.gvm/springboot/current/bin:$HOME/.gvm/lazybones/current/bin:$HOME/.gvm/jbake/current/bin:$HOME/.gvm/groovyserv/current/bin:$HOME/.gvm/groovy/current/bin:$HOME/.gvm/griffon/current/bin:$HOME/.gvm/grails/current/bin:$HOME/.gvm/gradle/current/bin:$HOME/.gvm/glide/current/bin:$HOME/.gvm/gaiden/current/bin:$HOME/.gvm/crash/current/bin:/Library/Java/JavaVirtualMachines/jdk1.7.0_72.jdk/Contents/Home/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/bin:/usr/local/git/bin:/usr/local:/usr/local/sbin:~/dev/UnrealEngine/Engine/Binaries/Mac'

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

include () {
    [[ -f "$1" ]] && source "$1"
}

include $HOME/.profile
include $HOME/.bashrc
include $HOME/.bash_aliases

include `brew --prefix`/etc/bash_completion

