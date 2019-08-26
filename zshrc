# zmodload zsh/datetime
# setopt PROMPT_SUBST
# PS4='+$EPOCHREALTIME %N:%i> '
# logfile=$(mktemp zsh_profile.XXXXXXXX)
# echo "Logging to $logfile"
# exec 3>&2 2>$logfile
# setopt XTRACE

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

after_hooks=()

plugins=(git vi-mode sudo docker osx docker-compose docker-machine brew mvn gradle  goint pyint javaint weblogic svnint powerline gitint mail private mobile tmux ruby vim)

post_process () {
    for hook in {$after_hooks[@]}; do
        eval "$hook"
    done
}

export ZSH=/Users/fifman/.oh-my-zsh
ZSH_THEME="avit"
source $ZSH/oh-my-zsh.sh

[ -f /Users/fifman/.travis/travis.sh ] && source /Users/fifman/.travis/travis.sh

alias display='echo -e "\033]50;SetProfile=Display\a"'
alias nodisplay='echo -e "\033]50;SetProfile=Default\a"'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# export LDFLAGS="-L/usr/local/opt/zlib/lib"
# export CPPFLAGS="-I/usr/local/opt/zlib/include"
export EDITOR="/usr/local/bin/vim"

post_process

# ansible fork problem
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

export PATH="/usr/local/sbin:$PATH"

# unsetopt XTRACE
# exec 2>&3 3>&-
