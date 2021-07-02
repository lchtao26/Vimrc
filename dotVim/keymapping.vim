let mapleader = " "
noremap <leader>. :vs $MYVIMRC<CR>
noremap <leader>so :so $MYVIMRC<CR>

let g:netrw_list_hide= '.*\.swp$,.*\.swo$'
" Move in NetrwRefresh
nnoremap <leader>r <Plug>NetrwRefresh
" Copy current file path
noremap <leader>cp :lcd %:p:h<CR> :let @+=expand("%:~")<CR>
noremap <leader>y "+y
noremap <leader>Y "+Y
nnoremap ! :!

" Emmet like: div => <div><div>
inoremap <S-Tab> <Esc>yiWi<<Esc>Emma></<C-r>"><Esc>`ma
nnoremap S :w<CR>
nnoremap Q :q<CR>

noremap L :tabnext<CR>
noremap H :tabprevious<CR>
noremap <C-n> :tabnew<Cr>

cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
