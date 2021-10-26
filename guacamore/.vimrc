" 見た目系
set number " 行番号を表示
" 現在の行を強調表示
set cursorline " 現在の行を強調表示
set ruler " 画面右下のカーソル位置を表示
set cursorline " カーソル行の背景色を変える
set title " ファイル名を表示
set showmatch "括弧入力時の対応括弧をハイライト
set matchtime=1
set colorcolumn=80
syntax on "コードの色分け 
colorscheme molokai
set t_Co=256

set list listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:% " 不可視文字の表示
inoremap <silent> jk <ESC>
"ノーマルモードのまま空行を入れる
map <Enter> o<ESC>
map <S-Enter> O<ESC>
" インデント
set autoindent " 改行時に前の行のインデントを継続する
set smartindent
set cindent
set tabstop=2
set shiftwidth=2 
" search
set ignorecase " 検索で大文字小文字を区別しない
set incsearch " highlight before entero

" Neobundle
" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
 set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

" tree
NeoBundle 'scrooloose/nerdtree'

" snippet
if has('lua') && (( v:version == 703 && has('patch885')) || (v:version >= 704))
  NeoBundle 'Shougo/neocomplete'
else
  NeoBundle 'Shougo/neocomplcache'
endif

NeoBundle "Shougo/neosnippet"
NeoBundle "Shougo/neosnippet-snippets"
NeoBundle "honza/vim-snippets"
NeoBundle "rcmdnk/vim-octopress-snippets"

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck


let g:neosnippet#snippets_directory='~/.vim/bundle/neosnippet-snippets/snippets/'

" Plugin key-mappings.
" " Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <TAB>     <Plug>(neosnippet_expand_or_jump)
smap <TAB>     <Plug>(neosnippet_expand_or_jump)
xmap <TAB>     <Plug>(neosnippet_expand_target)
"imap <C-k>     <Plug>(neosnippet_expand_or_jump)
"smap <C-k>     <Plug>(neosnippet_expand_or_jump)
"xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
"\    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
"smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
"<Plug>(neosnippet_expand_or_jump) : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif


let mapleader = "\<space>"
nnoremap <Leader>a :echo "Hello"<CR>
nnoremap <Leader>z :noh<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader><Leader>q :tabo<CR>
nnoremap <Leader>! :q!<CR>
nnoremap <Leader>h ^
nnoremap <Leader>l $
nnoremap <Leader>m %
nnoremap <Leader>t <C-w>t
nnoremap n nzz
nnoremap N Nzz

"autocmd vimenter * NERDTree
map <C-m> :NERDTreeToggle<CR>
