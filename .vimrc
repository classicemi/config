" ============
" basic config
" ============
let mapleader = "\<space>"
syntax on
set nocompatible
set autoread
set wildmenu
set nobackup       " no backup files
set noswapfile     " no swap files
set nowritebackup  " only in case you don't want a backup file while editing
set noundofile     " no undo files

" ===============
" encoding config
" ===============
set encoding=utf-8
set termencoding=utf-8
set formatoptions+=m
set formatoptions+=B

" =========
" ui config
" =========
set ruler
set number
set relativenumber
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

" ==========
" tab config
" ==========
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


" filetype config
" ===============
filetype on
filetype plugin on
filetype indent on

autocmd FileType javascript set tabstop=2 shiftwidth=2 expandtab ai

" =======
" key map
" =======
map R :source $MYVIMRC<CR>
map S :w<CR>
map <C-l> :tabn<CR>
map <C-h> :tabp<CR>
map <C-n> :tabnew<CR>

let g:plug_window = 'noautocmd vertical topleft new'

call plug#begin('~/.vim/bundle')

Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'liuchengxu/space-vim-dark'
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'jparise/vim-graphql'        " GraphQL syntax
Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }
Plug 'rust-lang/rust.vim'
Plug 'posva/vim-vue'

call plug#end()

colorscheme space-vim-dark

map <C-n> :NERDTreeToggle<CR>
map <C-m> :NERDTreeFind<CR>

" ==============
" coc extensions
" ==============
let g:coc_global_extensions = [ 'coc-tsserver' ]

" ==========
" coc config
" ==========
" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" ===========
" rust config
" ===========
let g:rustfmt_autosave = 1

