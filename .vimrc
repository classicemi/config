" =============
" basic config
" =============
syntax on
set nocompatible
set autoread
set nobackup

" =============
" encoding config
" =============
set encoding=utf-8
set termencoding=utf-8
set formatoptions+=m
set formatoptions+=B

" =============
" ui config
" =============
set ruler
set number
set nowrap
set showcmd
set showmode
set showmatch
set matchtime=2

" =============
" search config
" =============
set hlsearch
set incsearch
set ignorecase
set smartcase

" =============
" tab config
" =============
set expandtab
set smarttab
set shiftround

" =============
" indent config
" =============
set autoindent smartindent
set shiftwidth=2
set tabstop=2
set softtabstop=2

" =============
" filetype config
" =============
filetype on
filetype plugin on
filetype indent on

autocmd FileType javascript set tabstop=2 shiftwidth=4 expandtab ai

let mapleader = ","
let g:mapleader = ","

let g:plug_window = 'noautocmd vertical topleft new'

call plug#begin('~/.vim/bundle')

Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'liuchengxu/space-vim-dark'

call plug#end()

color space-vim-dark

map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

