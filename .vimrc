" ========================== Plugin
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'SirVer/ultisnips'
Plugin 'bronson/vim-visual-star-search'
Plugin 'dbakker/vim-projectroot'
Plugin 'joshdick/onedark.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-surround'
Plugin 'prettier/vim-prettier'
call vundle#end()
filetype plugin indent on

" CtrlP
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_use_caching = 0

" Ignore some folders and files for CtrlP indexing
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp$\|dist',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }

" UltiSnips
let g:UltiSnipsSnippetsDir="~/.vim"
let g:UltiSnipsSnippetDirectories=["myUltiSnippets"]

" Qargs
" This uses a custom :Qargs command to prune the arglist of buffers that don’t contain a match.
command! -nargs=0 -bar Qargs execute 'args' QuickfixFilenames()
function! QuickfixFilenames()
  " Building a hash ensures we get each buffer only once
  let buffer_numbers = {}
  for quickfix_item in getqflist()
    let buffer_numbers[quickfix_item['bufnr']] = bufname(quickfix_item['bufnr'])
  endfor
  return join(map(values(buffer_numbers), 'fnameescape(v:val)'))
endfunction


" ====================== BootStrap 
au BufNewFile,BufReadPost *.vue set ft=javascript.html.css.vue
au BufNewFile,BufReadPost *.wxml set ft=html.wxml
au BufNewFile,BufReadPost *.wxss set ft=css.wxss
autocmd BufEnter * silent! lcd %:p:h

set autoindent
set autoread
set belloff=all
set cursorline
set complete+=k
set dictionary+=/usr/share/dict/words
set expandtab
set hidden
set hlsearch
set incsearch
set laststatus=2
set number
set path+=**
set ruler
set showcmd
set ignorecase
set smartcase
set tabstop=2 shiftwidth=2
set wildmenu
set wildmode=list:longest,full

colorscheme onedark
syntax on

" =================== Keys Mapping
noremap <space>y "+y
noremap <space>Y "+Y
nnoremap <space>h :tabprev<cr>
nnoremap <space>l :tabnext<cr>

onoremap I ^
onoremap A $
vnoremap I ^
vnoremap A $

cnoremap ;; <c-r>=expand("%:p:h") . "/" <cr>
cnoremap :: <c-r>=expand(projectroot#guess()) . "/" <cr>

noremap <space>w :w<cr>
noremap <space>so :source $MYVIMRC<cr>
noremap <space>cp :let @" = expand("%:p")<cr>

map <space>ew :e <C-R>=expand("%:p:h") . "/" <CR>
map <space>es :sp <C-R>=expand("%:p:h") . "/" <CR>
map <space>ev :vsp <C-R>=expand("%:p:h") . "/" <CR>
map <space>et :tabe <C-R>=expand("%:p:h") . "/" <CR>


nnoremap <c-n> :tabnew<cr>
