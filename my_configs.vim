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
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

""""""""""""""""""""""""""""""
" => CTRL-P
""""""""""""""""""""""""""""""
let g:ctrlp_map = '<c-p>'

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

