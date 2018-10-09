function init_powerline {
    powerline-daemon -q
    . /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
}

after_hooks+=(init_powerline)
