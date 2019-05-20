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
" => ctags
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <leader>t <C-]><CR>
nmap <leader>tt :set tags=tags<cr>
nmap <leader>ttt :! sudo ctags --exclude=webui_html5_libs-* -R .<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "left"

""""""""""""""""""""""""""""""
" => CTRL-P
""""""""""""""""""""""""""""""
let g:ctrlp_map = '<c-p>'
let g:ctrlp_max_files=0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ag
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <leader>a  :tab split<CR>:Ag! ""<Left>
nmap <leader>A  :tab split<CR>:Ag <C-r><C-w><CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ack
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
unmap <leader>g

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <F8> :TagbarToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => YouCompleteMe
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('macunix')
    let g:ycm_server_python_interpreter='/usr/local/bin/python'
endif
let g:ycm_key_invoke_completion = '<S-Tab>'
imap <S-Tab> <NUL>
nmap <leader>gi  :YcmCompleter GoToInclude<CR>
nmap <leader>gd  :YcmCompleter GoToDeclaration<CR>
nmap <leader>gf  :YcmCompleter GoToDefinition<CR>
nmap <leader>g   :YcmCompleter GoTo<CR>
nmap <leader>gti :YcmCompleter GoToImprecise<CR>
nmap <leader>gr  :YcmCompleter GoToReferences<CR>
nmap <leader>gi  :YcmCompleter GoToImplementation<CR>
nmap <leader>gid :YcmCompleter GoToImplementationElseDeclaration<CR>
nmap <leader>gt  :YcmCompleter GoToType<CR>
nmap <leader>gti :YcmCompleter GetTypeImprecise<CR>
nmap <leader>gp  :YcmCompleter GetParent<CR>
nmap <leader>gc  :YcmCompleter GetDoc<CR>
nmap <leader>gdi :YcmCompleter GetDocImprecise<CR>
nmap <leader>fi  :YcmCompleter FixIt<CR>
nmap <leader>rr  :YcmCompleter RefactorRename<Space>
nmap <leader>fm  :YcmCompleter Format<Space>
nmap <leader>oi  :YcmCompleter OrganizeImports<Space>


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
" => CCTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <leader>uu :CCTreeLoadDB cscope.out<CR>
nmap <leader>uuu :!cscope -Rbq<CR>
nmap <leader>u> <C-\>>
nmap <leader>u< <C-\><
nmap <leader>u= <C-\>=
nmap <leader>u- <C-\>-

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

