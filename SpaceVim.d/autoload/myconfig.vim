func! myconfig#after() abort
    nnoremap <leader>mn :<c-u>Startify<CR>
    set wrap
    let g:vimsyn_folding = 'aftlpPr' 
    set foldmethod=syntax
endf

func! myconfig#before() abort

    au BufNewFile,BufRead *.gradle set filetype=groovy

    let g:mapleader = ";"

    "====================================== Startify
    let g:startify_bookmarks = [
        \ '~/.SpaceVim.d/autoload/myconfig.vim', 
        \ $MYVIMRC,
        \ '~/.SpaceVim.d/init.toml',
        \ '~/.SpaceVim/config/main.vim',
        \ '~/.SpaceVim/ginit.vim',
        \ '~/.dotfiles'
    \ ]

    "====================================== Unite
	nnoremap <silent> <leader>umd :<C-u>Unite bookmark:develop<CR>
	nnoremap <silent> <leader>ub  :<C-u>Unite buffer<CR>
	nnoremap <silent> <leader>uma :<C-u>UniteBookmarkAdd<CR>

    "====================================== Goyo
    autocmd! User GoyoEnter Limelight
    autocmd! User GoyoLeave Limelight!
	nnoremap <silent> <leader>gy :<C-u>Goyo<CR>
	nnoremap <silent> <leader>gq :<C-u>Goyo!<CR>

    let g:goyo_width = 120

    "====================================== Multiple-Cursors
    :au User MultipleCursorsPre DelimitMateOff
    :au User MultipleCursorsPost DelimitMateOn

    "====================================== Gundo
    nnoremap <F5> :<C-u>UndotreeToggle<CR>
endf
