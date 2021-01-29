set number

" Enable Mouse
set mouse=a

" Search & Backward Searchh
map <Space> <Space>
map <C-Space> <C-Space>

" USING VIM AS HEX EDITOR
map <Leader>hon :%!xxd -g1<CR>
map <Leader>hof :%!xxd -r<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "left"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => fzf
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_map = ''
let g:ctrlp_cmd = ''
nmap <C-p> :Files<CR>
nmap <leader>b :Buffers<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <F8> :TagbarToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Rainbow
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:rainbow_active = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => YouCompleteMe
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ycm_collect_identifiers_from_tags_files = 1
if has('macunix')
    let g:ycm_server_python_interpreter='/usr/local/bin/python3'
endif
let g:ycm_key_invoke_completion = '<c-/>'
imap <S-Tab> <NUL>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => python-mode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <leader>pl :PymodeLintAuto<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-javascript
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:javascript_plugin_jsdoc = 1
" let g:javascript_plugin_ngdoc = 1
" let g:javascript_plugin_flow = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => csv.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:no_csv_maps = 1
let g:csv_highlight_column = 'y'
let g:csv_no_conceal = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => SrcExpl
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" The switch of the Source Explorer 
nmap <F7> :SrcExplToggle<CR> 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-autoformat 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <F5> :Autoformat<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => undotree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <F6> :UndotreeToggle<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-pydocstring
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-dirdiff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <leader>dd  :DirDiff <dir1> <dir2><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>

