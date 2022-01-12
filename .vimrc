" Display
set number
set cursorline
set ruler
set cursorline
set title
set showmatch
set matchtime=1
"set colorcolumn=80
syntax on
"colorscheme molokai


" Indent
set autoindent
set smartindent
set cindent
set tabstop=4
set shiftwidth=4 

"Key Mapping
inoremap <silent> jk <ESC>
nnoremap <CR> i<CR><ESC>
let mapleader = "\<space>"
nnoremap <Leader>a :echo "Hello"<CR>
nnoremap <Leader>z :noh<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader><Leader>q :tabo<CR>
nnoremap <Leader>x :q!<CR>
nnoremap <Leader>h ^
nnoremap <Leader>l $
nnoremap <Leader>m %
nnoremap <Leader>t <C-w>t
nnoremap n nzz
nnoremap N Nzz

" Search
set ignorecase
set incsearch

" Others
set noswapfile
set foldmethod=syntax
set foldlevel=3

set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac
