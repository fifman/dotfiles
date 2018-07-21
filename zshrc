export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export ZSH=/Users/fifman/.oh-my-zsh
ZSH_THEME="avit"
plugins=(git vi-mode sudo docker osx docker-compose docker-machine brew mvn gradle goint pyint javaint weblogic powerline svnint)
source $ZSH/oh-my-zsh.sh

[ -f /Users/fifman/.travis/travis.sh ] && source /Users/fifman/.travis/travis.sh

export HOMEBREW_GITHUB_API_TOKEN="ac102e2db25ec733b06210ca2a4bcfabc17cc484"

alias display='echo -e "\033]50;SetProfile=Display\a"'
alias nodisplay='echo -e "\033]50;SetProfile=Default\a"'
