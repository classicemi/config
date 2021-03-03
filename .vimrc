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
set fileencodings=utf-8,gb18030

" =========
" ui config
" =========
set termguicolors
set ruler
set number
set relativenumber
set nowrap
set showcmd
set showmode
set showmatch
set matchtime=2
set guicursor=a:block

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

" ===============
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

Plug 'mileszs/ack.vim'
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'jparise/vim-graphql'        " GraphQL syntax
Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }
Plug 'rust-lang/rust.vim'
Plug 'posva/vim-vue'
Plug 'jxnblk/vim-mdx-js'
Plug 'airblade/vim-gitgutter'
Plug 'plasticboy/vim-markdown'
Plug 'preservim/tagbar'
let g:tagbar_ctags_bin = '/usr/local/Cellar/ctags/5.8_2/bin/ctags'
Plug 'tomtom/tcomment_vim'

" if has('nvim')
"   Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" else
"   Plug 'Shougo/deoplete.nvim'
"   Plug 'roxma/nvim-yarp'
"   Plug 'roxma/vim-hug-neovim-rpc'
" endif
" let g:deoplete#enable_at_startup = 1

" ============
" colorschemes
" ============
Plug 'liuchengxu/space-vim-dark'
Plug 'jacoborus/tender.vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'morhetz/gruvbox'
Plug 'rakr/vim-one'

call plug#end()

colorscheme tender

nnoremap <silent> <leader>e :NERDTreeToggle<cr>
nnoremap <silent> <leader>f :NERDTreeToggle<cr>

let g:NERDTreeWinSize=40

" ==============
" coc extensions
" ==============
let g:coc_global_extensions = [
      \'coc-tsserver',
      \'coc-vetur',
      \'coc-json',
      \'coc-css',
      \'coc-rome'
      \]

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

