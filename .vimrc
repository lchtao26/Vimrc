" ========================== Plugin
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'VundleVim/Vundle.vim'
Plugin 'joshdick/onedark.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'rstacruz/vim-closer'
Plugin 'sheerun/vim-polyglot'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'SirVer/ultisnips'
call vundle#end()
filetype plugin indent on

" CtrlP
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
" Ignore some folders and files for CtrlP indexing
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp$\|dist',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }

" OneDark
let g:onedark_hide_endofbuffer=1
let g:onedark_termcolors=256

" ====================== BootStrap 
au BufNewFile,BufReadPost *.vue,*.wxml set ft=html
au BufNewFile,BufReadPost *.wxss set ft=css
autocmd BufEnter * silent! lcd %:p:h

set autoindent
set autoread
set belloff=all
set complete+=k
set cursorline
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
set smartcase
set tabstop=2 shiftwidth=2
set wildmenu
set wildmode=list:longest,full

colorscheme onedark
syntax on

" =================== Keys Mapping
nnoremap H ^
nnoremap L $
onoremap H ^
onoremap L $
vnoremap H ^
vnoremap L $
noremap <space> /
noremap <s-space> ?
noremap <leader>y "+y
noremap <leader>Y "+Y
noremap <leader>p "+p
noremap <leader>P "+P
noremap <leader>so  :source $MYVIMRC<cr>
noremap <leader>, :e $MYVIMRC<cr>

nnoremap <c-left> :tabprevious<cr>
nnoremap <c-right> :tabnext<cr>
nnoremap <silent> <a-left> :execute 'silent! tabmove ' . (tabpagenr()-2)<cr>
nnoremap <silent> <a-right> :execute 'silent! tabmove ' . (tabpagenr()+1)<cr>

noremap <tab> <c-w>w:cd %:p:h<cr>:<cr>
noremap <s-tab> :wincmd p<cr>


