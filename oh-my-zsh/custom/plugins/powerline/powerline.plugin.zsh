function init_powerline {
    powerline_path=~/Library/Python/2.7
    export PATH="$powerline_path/bin:$PATH"
    powerline-daemon -q
    . $powerline_path/lib/python/site-packages/powerline/bindings/zsh/powerline.zsh
}

after_hooks+=(init_powerline)
