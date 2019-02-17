function init_powerline {
    powerline-daemon -q
    . /Users/fifman/Library/Python/3.6/lib/python/site-packages/powerline/bindings/zsh/powerline.zsh
}

after_hooks+=(init_powerline)
