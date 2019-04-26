set number

" Enable Mouse
set mouse=a

" USING VIM AS HEX EDITOR
map <Leader>hon :%!xxd<CR>
map <Leader>hof :%!xxd -r<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "left"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ag
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <leader>a  :tab split<CR>:Ag! ""<Left>
noremap <leader>A  :tab split<CR>:Ag <C-r><C-w><CR>

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
nnoremap <leader>gi  :YcmCompleter GoToInclude<CR>
nnoremap <leader>gd  :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf  :YcmCompleter GoToDefinition<CR>
nnoremap <leader>g   :YcmCompleter GoTo<CR>
nnoremap <leader>gti :YcmCompleter GoToImprecise<CR>
nnoremap <leader>gr  :YcmCompleter GoToReferences<CR>
nnoremap <leader>gi  :YcmCompleter GoToImplementation<CR>
nnoremap <leader>gid :YcmCompleter GoToImplementationElseDeclaration<CR>
nnoremap <leader>gt  :YcmCompleter GoToType<CR>
nnoremap <leader>gti :YcmCompleter GetTypeImprecise<CR>
nnoremap <leader>gp  :YcmCompleter GetParent<CR>
nnoremap <leader>gc  :YcmCompleter GetDoc<CR>
nnoremap <leader>gdi :YcmCompleter GetDocImprecise<CR>
nnoremap <leader>fi  :YcmCompleter FixIt<CR>
nnoremap <leader>rr  :YcmCompleter RefactorRename<Space>
nnoremap <leader>fm  :YcmCompleter Format<Space>
nnoremap <leader>oi  :YcmCompleter OrganizeImports<Space>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => python-mode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:pymode_python = 'python3'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-javascript
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:javascript_plugin_jsdoc = 1
" let g:javascript_plugin_ngdoc = 1
" let g:javascript_plugin_flow = 1
