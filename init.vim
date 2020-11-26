call plug#begin()

Plug 'posva/vim-vue'
Plug 'preservim/nerdtree'
Plug 'flazz/vim-colorschemes'
call plug#end()

language en_US
colorscheme jellybeans 

let mapleader = ","
let NERDTreeShowHidden=1

noremap <Leader>c "+y
noremap <Leader>w :w <Enter>
noremap <Leader>n :NERDTreeToggle <Enter>
noremap <Leader>e :!eslint % --fix <Enter>

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set number
set noswapfile

nnoremap <Leader>j <C-W><C-J>
nnoremap <Leader>k <C-W><C-K>
nnoremap <Leader>l <C-W><C-L>
nnoremap <Leader>h <C-W><C-H>

autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype vue setlocal tabstop=2 shiftwidth=2 softtabstop=2





let g:deoplete#enable_at_startup = 1
