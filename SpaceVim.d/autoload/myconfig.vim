func! myconfig#after() abort
    nnoremap <leader>mn :<c-u>Startify<CR>
    set wrap
endf

func! myconfig#before() abort

    let g:mapleader = ";"

    "====================================== Startify
    let g:startify_bookmarks = [
        \ '~/.SpaceVim.d/autoload/myconfig.vim', 
        \ $MYVIMRC,
        \ '~/.SpaceVim.d/init.toml',
        \ '~/.SpaceVim/config/main.vim',
        \ '~/.SpaceVim/ginit.vim',
        \ '~/.dotfiles',
        \ '~/Data/Develop'
    \ ]

    "====================================== Unite
	nnoremap <silent> <leader>umd :<C-u>Unite bookmark:develop<CR>
	nnoremap <silent> <leader>ub  :<C-u>Unite buffer<CR>
	nnoremap <silent> <leader>uma :<C-u>UniteBookmarkAdd<CR>

endf
