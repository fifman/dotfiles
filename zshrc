export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export ZSH=/Users/fifman/.oh-my-zsh
ZSH_THEME="avit"
plugins=(git vi-mode sudo docker osx docker-compose docker-machine brew mvn gradle goint pyint)
source $ZSH/oh-my-zsh.sh

powerline_path=~/Library/Python/2.7
export PATH="$powerline_path/bin:$PATH"
powerline-daemon -q
. $powerline_path/lib/python/site-packages/powerline/bindings/zsh/powerline.zsh

alias svnadd='svn st | awk '"'"'{if ( $1 == "?") {$1=""; print "\""substr($0,2)"\""}}'"'"' | xargs svn add'
alias svndel='svn st | awk '"'"'{if ( $1 == "!") {$1=""; print "\""substr($0,2)"\""}}'"'"' | xargs svn rm'
alias svncom='svn commit -m "new"'
alias svndis='find . -iname ".svn" -print0 | xargs -0 rm -r'

export SVN_EDITOR=vim

export USER_MEM_ARGS="-Xmx1024m -XX:MaxPermSize=256m"       
export MW_HOME=/opt/wls1036_dev/

[ -f /Users/fifman/.travis/travis.sh ] && source /Users/fifman/.travis/travis.sh

export HOMEBREW_GITHUB_API_TOKEN="ac102e2db25ec733b06210ca2a4bcfabc17cc484"

alias display='echo -e "\033]50;SetProfile=Display\a"'
alias nodisplay='echo -e "\033]50;SetProfile=Default\a"'

export CATALINA_HOME=/usr/local/opt/tomcat/libexec
export PATH=/usr/local/Cellar/cookiecutter/1.5.1/bin:$PATH

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
