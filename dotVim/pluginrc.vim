call plug#begin()
Plug 'https://github.com.cnpmjs.org/AndrewRadev/splitjoin.vim'
Plug 'https://github.com.cnpmjs.org/tpope/vim-surround'
Plug 'https://github.com.cnpmjs.org/bronson/vim-visual-star-search'
Plug 'https://github.com.cnpmjs.org/sheerun/vim-polyglot'
Plug 'https://github.com.cnpmjs.org/darthmall/vim-vue'
Plug 'https://github.com.cnpmjs.org/sdras/vue-vscode-snippets'
Plug 'https://github.com.cnpmjs.org/abusaidm/html-snippets', { 'commit': '534b870' }
" Some function of Unite need vimproc
Plug 'https://github.com.cnpmjs.org/Shougo/unite.vim'
Plug 'https://github.com.cnpmjs.org/Shougo/vimproc.vim', {'do' : 'make'}
Plug 'https://github.com.cnpmjs.org/neoclide/coc.nvim'
call plug#end()


" Unit ---------------------------------------------------------------- Start
call unite#custom#source('file,file/new,buffer,file_rec,file_rec/git', 
                  \ 'matchers', 'matcher_fuzzy')
call unite#custom#source(
                  \ 'file,file/new,buffer,file_rec,file_rec/git', 'converters',
                  \ ['converter_file_directory'])
nnoremap <silent> <C-p> 
                  \ :<C-u>Unite -start-insert file_rec/git<CR>
nnoremap <silent> <C-\> 
                  \ :<C-u>Unite -start-insert register<CR>
" Unit ---------------------------------------------------------------- End


" Coc ---------------------------------------------------------------- Start
let g:coc_global_extensions = [
      \ 'coc-json',
      \ 'coc-tsserver',
      \ 'coc-snippets',
      \ 'coc-eslint',
      \ 'coc-prettier',
      \ ]

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
" Always show the signcolumn, otherwise it would shift the text each time
set signcolumn=yes
" Provide custom statusline
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <leader>dl  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <leader>ex  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <leader>co  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <leader>ol  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <leader>sb  :<C-u>CocList -I symbols<cr>

" Coc-Extension: Snippets
" Make <tab> used for trigger completion, completion confirm, snippet expand and jump.
let g:coc_snippet_next = '<tab>'
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
let col = col('.') - 1
return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" Coc ---------------------------------------------------------------- End
