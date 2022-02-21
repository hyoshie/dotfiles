"dein Scripts-----------------------------
if &compatible
	  set nocompatible               " Be iMproved
endif

"Path to DIR
let s:dein_dir = expand('~/dotfiles/.vim/dein')
" let s:dein_dir = expand('~/dotfiles/dein')
let s:dein_repo_dir = s:dein_dir .  '/repos/github.com/Shougo/dein.vim'
let s:toml_dir = expand('~/dotfiles/.config/nvim')
" let s:dein_dir = expand('~/.vim/dein')
" let s:dein_repo_dir = s:dein_dir .  '/repos/github.com/Shougo/dein.vim'
" let s:toml_dir = expand('~/.config/nvim')

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

"ADD .vimPATH
set runtimepath+=$HOME/dotfiles/.vim

"Display
set number
set cursorline
set ruler
set cursorline
set title
set showmatch
set matchtime=1
hi MatchParen ctermbg=1
" set relativenumber
"set colorcolumn=80
syntax on
set encoding=utf-8
set fileencodings=utf-8
set fileformats=unix,dos,mac
lang en_US.UTF-8
hi Visual ctermbg=227

set list
set listchars=tab:_-,trail:-,extends:»,precedes:«,nbsp:%

" Indent
set autoindent
set smartindent
set cindent
set tabstop=4
set shiftwidth=4 
set pastetoggle=<C-q>

"Key Mapping
" inoremap <C-e>j <ESC>A;
" inoremap <C-e>k <ESC><Right>a
" inoremap <C-e>l <ESC>A();
inoremap <C-j> <ESC>A;
inoremap <C-k> <ESC><Right>a
" inoremap <C-k> <ESC><Right>a
inoremap <A-h>  <Left>
inoremap <A-l>  <Right>
inoremap <A-j>  <Down>
inoremap <A-k>  <UP>
inoremap <A-d>  <BackSpace>
nnoremap <C-j> }
vnoremap <C-j> }
nnoremap <C-k> {
vnoremap <C-k> {
inoremap <silent> jk <ESC>
nnoremap n nzz
nnoremap N Nzz
nnoremap H ^
nnoremap L $
nnoremap <CR> A<CR><ESC>

" auto close
inoremap {j {}<left><CR><esc><s-o>
inoremap {k {}<esc>i
inoremap { {}<esc>i
inoremap ( ()<esc>i
inoremap [ []<esc>i
inoremap " ""<esc>i
inoremap ' ''<esc>i

vnoremap <C-Up> "zx<Up>"zP`[V`]
vnoremap <C-Down> "zx"zp`[V`]


"leader key
let mapleader = "\<space>"
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>a :qa<CR>
nnoremap <Leader>x :q!<CR>
nnoremap <leader>c :!ctags -R<CR>
vnoremap <leader>c gc<UP>p
" nnoremap <Leader>m %
nnoremap <Leader>hh :noh <CR>
nnoremap <leader>sa :%s/
nnoremap <leader>sl :s/
nnoremap <leader>v :source $MYVIMRC<CR>
" nnoremap <leader>b :b 
" inoremap <leader>; ();
" inoremap <leader>f func<Tab>
cnoremap <C-l> ~/
nnoremap <Leader>sf :%s;\<<C-R><C-W>\>;g<Left><Left>;
nnoremap <leader>= gg=G
nnoremap <leader>d :%bd<CR>
" nnoremap <leader>p :bprev<CR>
nnoremap <leader>n :set number!<CR>
nnoremap <leader>oo :
nnoremap <leader>oj :!
nnoremap <leader>or :r !
cnoremap <C-j> <C-w>
cnoremap <C-u> <C-c>
nnoremap <leader>fa :Ag<CR>
nnoremap <leader>fb :Buffers<CR>
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fh :History<CR>
nnoremap <leader>t :retab!<CR>
"Gtags
nnoremap <leader>gf :Gtags -f %<CR>
nnoremap <leader>gj :GtagsCursor<CR>
nnoremap <leader>gd :<C-u>exe('Gtags '.expand('<cword>'))<CR>
nnoremap <leader>gr :<C-u>exe('Gtags -r '.expand('<cword>'))<CR>
" buffer operation
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>

"vim-fugitive
nnoremap <Leader>gc :Gread<CR>
nnoremap <Leader>gd :Gdiff<CR>
nnoremap gj <C-w>h
nnoremap gk <C-w>w
nnoremap gx <C-w>x
nnoremap <leader>j <C-w>w
nnoremap <S-G> <S-G>zz

" Search
set ignorecase
set incsearch
set wrapscan

" Others
set noswapfile
set foldmethod=indent
set foldlevel=3
set splitright
" set autochdir

" Start at Last modified
:au BufReadPost * if line("'\"") > 1  && line("'\"") <= line("$") | exe "normal! g`\"" | endif

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

"nerdtree exit
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

autocmd FileType c,cpp setlocal commentstring=//\ %s

"template
augroup templateGroup
autocmd!
autocmd BufNewFile *.h :Headerguard
autocmd BufNewFile *.h :Stdheader
autocmd BufNewFile *.h :%s/define/ define/g
autocmd BufNewFile *.h :r !echo
" autocmd BufNewFile *.h :r !proto *.c
augroup END

aug space
	au!
		autocmd BufWritePre *.c,*.cpp,*.h,*.hpp :%s/\s\+$//e
aug END

" aug spacetotab
" 	au!
" 		autocmd BufWritePre *.c,*.cpp,*.h,*.hpp :12,$s/    /\t/g
" aug END


" quickfix: make modifyable qlist 
function! OpenModifiableQF()
	cw
	set modifiable
	set nowrap
endfunction

autocmd QuickfixCmdPost vimgrep call OpenModifiableQF()

augroup fileTypeIndent
    autocmd!
    autocmd BufNewFile,BufRead *.cpp,*.hpp setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
augroup END


function! s:clang_format()
  let now_line = line(".")
  exec ":%! clang-format"
  exec ":" . now_line
endfunction

if executable('clang-format')
  augroup cpp_clang_format
    autocmd!
    autocmd BufWrite,FileWritePre,FileAppendPre *.[ch]pp call s:clang_format()
    " autocmd BufWrite,FileWritePre,FileAppendPre *.c,*.h call s:clang_format()
  augroup END
endif
