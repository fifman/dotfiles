function init_powerline {
    powerline-daemon -q
    . `pip3 show powerline-status | grep Location | awk '{print $2}'`/powerline/bindings/zsh/powerline.zsh
}

after_hooks+=(init_powerline)
