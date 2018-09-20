export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

plugins=(git vi-mode sudo docker osx docker-compose docker-machine brew mvn gradle 
    goint pyint javaint weblogic svnint powerline gitint mail)

after_hooks=()
post_process () {
    for hook in {$after_hooks[@]}; do
        eval "$hook"
    done
}

export ZSH=/Users/fifman/.oh-my-zsh
ZSH_THEME="avit"
source $ZSH/oh-my-zsh.sh

[ -f /Users/fifman/.travis/travis.sh ] && source /Users/fifman/.travis/travis.sh

export HOMEBREW_GITHUB_API_TOKEN="baeb73fd55d88499299ad7c5a10531bba94f55ee"

alias display='echo -e "\033]50;SetProfile=Display\a"'
alias nodisplay='echo -e "\033]50;SetProfile=Default\a"'

post_process

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
