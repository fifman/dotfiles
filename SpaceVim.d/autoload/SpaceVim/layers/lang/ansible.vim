"=============================================================================
" ansible.vim --- ansible layer for SpaceVim
" Copyright (c) 2016-2018 fifman
" Author: fifman < fifman at 163.com >
" URL: https://spacevim.org
" License: GPLv3
"=============================================================================
function! SpaceVim#layers#lang#ansible#plugins() abort
    let g:ansible_name_highlight = 'd'
    let g:ansible_attribute_highlight = "ab"
    let g:ansible_yamlKeyName = 'yamlKey'
    let g:ansible_extra_keywords_highlight = 1
    let g:ansible_normal_keywords_highlight = 'Constant'
    let g:ansible_with_keywords_highlight = 'Constant'
    au BufRead,BufNewFile *.ans set filetype=yaml.ansible
    let plugins = []
    call add(plugins, ['stephpy/vim-yaml', {'merged' : 0}])
    call add(plugins, ['pearofducks/ansible-vim', {'merged' : 0}])
    return plugins
endfunction
