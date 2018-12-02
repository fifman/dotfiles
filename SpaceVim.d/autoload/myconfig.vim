func! myconfig#after() abort
    set wrap
    let g:vimsyn_folding = 'aftlpPr' 
    set foldmethod=syntax

    "====================================== Table-Mode
    let g:table_mode_corner='|'
    
    function! s:isAtStartOfLine(mapping)
        let text_before_cursor = getline('.')[0 : col('.')-1]
        let mapping_pattern = '\V' . escape(a:mapping, '\')
        let comment_pattern = '\V' . escape(substitute(&l:commentstring, '%s.*$', '', ''), '\')
        return (text_before_cursor =~? '^' . ('\v(' . comment_pattern . '\v)?') . '\s*\v' . mapping_pattern . '\v$')
    endfunction

    inoreabbrev <expr> <bar><bar>
                \ <SID>isAtStartOfLine('\|\|') ?
                \ '<c-o>:TableModeEnable<cr><bar><space><bar><left><left>' : '<bar><bar>'
    inoreabbrev <expr> __
                \ <SID>isAtStartOfLine('__') ?
          \ '<c-o>:silent! TableModeDisable<cr>' : '__'
endf

func! myconfig#before() abort

    au BufNewFile,BufRead *.gradle set filetype=groovy
	au BufRead,BufNewFile *.ans	set filetype=yaml
	au BufRead,BufNewFile *.stack set filetype=yaml

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

    "====================================== Goyo
    autocmd! User GoyoEnter Limelight
    autocmd! User GoyoLeave Limelight!
	nnoremap <silent> <leader>gy :<C-u>Goyo<CR>
	nnoremap <silent> <leader>gq :<C-u>Goyo!<CR>

    let g:goyo_width = 120

    "====================================== Multiple-Cursors
    :au User MultipleCursorsPre DelimitMateOff
    :au User MultipleCursorsPost DelimitMateOn
    let g:multi_cursor_exit_from_visual_mode = 0
    let g:multi_cursor_exit_from_insert_mode = 0

    "====================================== Undotree
    nnoremap <F5> :<C-u>UndotreeToggle<CR>
endf
