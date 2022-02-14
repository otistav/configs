syntax on
set fileformat=unix
set encoding=UTF-8

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |

set term=screen-256color

set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set smartindent
set smarttab
set expandtab
set ruler
set list
set listchars=eol:.,tab:>-,trail:~,extends:>,precedes:<
set noswapfile
set cursorline
set number
set relativenumber
set scrolloff=8
set signcolumn=yes
set showcmd
set conceallevel=1
set shortmess+=c
set formatoptions-=cro

set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set clipboard=unnamed

set ignorecase
set smartcase
set incsearch
set hlsearch
nnoremap <CR> :noh<CR><CR>:<backspace>



call plug#begin()
Plug 'preservim/nerdtree'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'flazz/vim-colorschemes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

language en_US
colorscheme jellybeans 

let mapleader = ","
let NERDTreeShowHidden=1

noremap <Leader>c "+y
noremap <Leader>w :w <Enter>
noremap <Leader>n :NERDTreeToggle <Enter>
noremap <Leader>e :!eslint % --fix <Enter>
noremap <Leader>p :Ag <Enter>

nnoremap <silent><leader>1 :source ~/.vimrc \| :PlugInstall<CR>


nnoremap <Leader>j <C-W><C-J>
nnoremap <Leader>k <C-W><C-K>
nnoremap <Leader>l <C-W><C-L>
nnoremap <Leader>h <C-W><C-H>


let g:coc_global_extensions = ['coc-tsserver']

let g:deoplete#enable_at_startup = 1
