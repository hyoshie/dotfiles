"dein Scripts-----------------------------
if &compatible
	  set nocompatible               " Be iMproved
endif

"Path to DIR
let s:dein_dir = expand('~/.vim/dein')
let s:dein_repo_dir = s:dein_dir .  '/repos/github.com/Shougo/dein.vim'
let s:toml_dir = expand('~/.config/nvim')

" Required:
execute 'set runtimepath^=' . s:dein_repo_dir

" Required:
if dein#load_state(s:dein_dir)
	call dein#begin(s:dein_dir)

	call dein#load_toml(s:toml_dir . '/dein.toml', {'lazy': 0})
	call dein#load_toml(s:toml_dir . '/lazy.toml', {'lazy': 1})

	" Required:
	call dein#end()
	call dein#save_state()
endif

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
if dein#check_install()
	call dein#install()
endif

"End dein Scripts-------------------------
"nvim-treesitter




lua <<EOF
require'nvim-treesitter.configs'.setup {
	highlight = {
	enable = true,
	disable = {
		'lua',
		'ruby',
		'toml',
		'c_sharp',
		'vue',
		}
	}
}
EOF

"Display
set number
set cursorline
set ruler
set cursorline
set title
set showmatch
set matchtime=1
set relativenumber
"set colorcolumn=80
syntax on
"colorscheme molokai
set encoding=utf-8
set fileencodings=utf-8
set fileformats=unix,dos,mac

lang en_US.UTF-8

set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%


" Indent
set autoindent
set smartindent
set cindent
set tabstop=4
set shiftwidth=4 
set pastetoggle=<C-q>

"Key Mapping
inoremap <silent> jk <ESC>
nnoremap Enter o<ESC>
let mapleader = "\<space>"
nnoremap <Leader>a :echo "Hello"<CR>
nnoremap <Leader>z :noh<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>wq :wq<CR>
nnoremap <Leader><Leader>q :tabo<CR>
nnoremap <Leader>x :q!<CR>
nnoremap <Leader>m %
nnoremap <Leader>t <C-w>t
nnoremap n nzz
nnoremap N Nzz
nnoremap H ^
nnoremap L $
nnoremap <Leader>n o<Esc>
"vim-fugitive
nnoremap <Leader>gc :Gread<CR>
nnoremap <Leader>gd :Gdiff<CR>
nnoremap gj <C-w>h
nnoremap gk <C-w>w
nnoremap gx <C-w>x
nnoremap <tab> <C-w>w

" Search
set ignorecase
set incsearch

" Others
set noswapfile
set foldmethod=indent
set foldlevel=3

"Anywhere SID.
function! s:SID_PREFIX()
  return matchstr(expand('<sfile>'), '<SNR>\d\+_\zeSID_PREFIX$')
endfunction

" Set tabline.
function! s:my_tabline()  "{{{
  let s = ''
  for i in range(1, tabpagenr('$'))
    let bufnrs = tabpagebuflist(i)
    let bufnr = bufnrs[tabpagewinnr(i) - 1]  " first window, first appears
    let no = i  " display 0-origin tabpagenr.
    let mod = getbufvar(bufnr, '&modified') ? '!' : ' '
    let title = fnamemodify(bufname(bufnr), ':t')
    let title = '[' . title . ']'
    let s .= '%'.i.'T'
    let s .= '%#' . (i == tabpagenr() ? 'TabLineSel' : 'TabLine') . '#'
    let s .= no . ':' . title
    let s .= mod
    let s .= '%#TabLineFill# '
  endfor
  let s .= '%#TabLineFill#%T%=%#TabLine#'
  return s
endfunction "}}}
let &tabline = '%!'. s:SID_PREFIX() . 'my_tabline()'
set showtabline=2 " 常にタブラインを表示

" The prefix key.
nnoremap    [Tag]   <Nop>
nmap    t [Tag]
" Tab jump
for n in range(1, 9)
  execute 'nnoremap <silent> [Tag]'.n  ':<C-u>tabnext'.n.'<CR>'
endfor
" t1 で1番左のタブ、t2 で1番左から2番目のタブにジャンプ

map <silent> [Tag]c :tablast <bar> tabnew<CR>
" tc 新しいタブを一番右に作る
map <silent> [Tag]x :tabclose<CR>
" tx タブを閉じる
map <silent> [Tag]n :tabnext<CR>
" tn 次のタブ
map <silent> [Tag]p :tabprevious<CR>
" tp 前のタブ
