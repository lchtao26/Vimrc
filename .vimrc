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
Plugin 'dbakker/vim-projectroot'
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
let g:onedark_termcolors=256 " ====================== BootStrap 

" UltiSnips
let g:UltiSnipsSnippetsDir="~/.vim"
let g:UltiSnipsSnippetDirectories=["myUltiSnippets"]

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
noremap <space>p "+p
noremap <space>P "+P

noremap <space>cd :cd <c-r>=expand("%:p:h") . "/" <cr>
noremap <space>ew :e <c-r>=expand("%:p:h") . "/" <cr><cr>
noremap <space>es :sp <c-r>=expand("%:p:h") . "/" <cr><cr>
noremap <space>ev :vsp <c-r>=expand("%:p:h") . "/" <cr><cr>
noremap <space>et :tabe <c-r>=expand("%:p:h") . "/" <cr><cr>

noremap <space>er :e <c-r>=expand(projectroot#guess()) . "/" <cr><cr>
noremap <space>ver :vsp <c-r>=expand(projectroot#guess()) . "/" <cr><cr>

noremap <space>w :w<cr>
noremap <space>wa :wall<cr>

noremap <leader>, :vs $MYVIMRC<cr>
noremap <leader>so  :source $MYVIMRC<cr>

noremap <tab> <c-w>w:cd %:p:h<cr>:<cr>
noremap <silent> <s-tab> :wincmd p<cr>

nnoremap <c-n> :tabnew<cr>
nnoremap H :tabprev<cr>
nnoremap L :tabnext<cr>
