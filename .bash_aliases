alias ..='cd ..'
alias brew-update='brew update; brew list | xargs brew upgrade'
alias dependency-resolve='mvn dependency:resolve'
alias dependency-sources='mvn dependency:sources'
alias format='codevalidator.py --no-backup -rf '
alias gd='git diff $@'
alias gdf='git difftool --tool=opendiff --no-prompt $@'
alias gformat='git st $@ | awk '\''/^[A\|M\|R]/ {print $NF}'\'' | xargs codevalidator.py --no-backup -rf'
alias gs='git st $@'
alias gst='git status $@'
alias gtree='git tree $@'
alias hidedot='defaults write com.apple.Finder AppleShowAllFiles NO; killall Finder && open /System/Library/CoreServices/Finder.app'
alias iter='for var in '\'''\''; do echo '\'''\''; done'
alias ll='ls -lGh'
alias meclipse='mvn eclipse:clean eclipse:eclipse'
alias minstall='mvn clean install'
alias mnv='mvn'
alias msonar='mvn sonar:sonar'
alias mverify='mvn clean verify -Pintegration-test'
alias netstat='sudo lsof -i -n -P | grep LISTEN'
alias process-test-resources='mvn process-test-resources -Pintegration-test'
alias reboot='cd /Users/asmolich/work/Zalando/workspace/reboot'
alias sd='svn diff $@'
alias sdf='svn diff --diff-cmd fmdiff $@'
alias sdp='svn diff --diff-cmd /Applications/p4merge.app/Contents/MacOS/p4merge $@'
alias second='echo  | cut -d'\''-'\'' -f 1'
alias sformat='svn st $@ | awk '\''/^[A\|M\|R]/ {print $NF}'\'' | xargs codevalidator.py --no-backup -rf'
alias showdot='defaults write com.apple.Finder AppleShowAllFiles YES; killall Finder && open /System/Library/CoreServices/Finder.app'
alias snv='svn'
alias ss='svn st $@'
alias use_maven2='[ -f /usr/share/maven ] || sudo rm /usr/share/maven; sudo ln -s /usr/share/maven2 /usr/share/maven; mvn -version'
alias use_maven3='[ -f /usr/share/maven ] || sudo rm /usr/share/maven; sudo ln -s /usr/share/maven3 /usr/share/maven; mvn -version'
alias use_maven31='[ -f /usr/share/maven ] || sudo rm /usr/share/maven; sudo ln -s /usr/share/maven31 /usr/share/maven; mvn -version'
alias vim='mvim -v'
alias zdeploy='ssh -A deployctl@deploy.zalando'
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"
