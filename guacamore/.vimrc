"dein Scripts-----------------------------
if &compatible
	  set nocompatible               " Be iMproved
endif

"Required:
set runtimepath+=/Users/hyoshie/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('/Users/hyoshie/.cache/dein')

" Let dein manage dein
" Required:
call dein#add('/Users/hyoshie/.cache/dein/repos/github.com/Shougo/dein.vim')

" Add or remove your plugins here like this:
" call dein#add('Shougo/neosnippet.vim')
" call dein#add('Shougo/neosnippet-snippets')

call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('tomasr/molokai')

"tree
call dein#add('scrooloose/nerdtree')
"commentout
call dein#add('tpope/vim-commentary')
"syntaxcheck
call dein#add('scrooloose/syntastic')

" deoplete
" call dein#add('Shougo/deoplete.nvim')
" if !has('nvim')
"   call dein#add('roxma/nvim-yarp')
"   call dein#add('roxma/vim-hug-neovim-rpc')
" endif
" let g:deoplete#enable_at_startup = 1
" set shortmess+=c

" inoremap <expr><BS> neocomplete#smart_close_popup()."<C-h>"
" imap <expr><CR> neosnippet#expandable() ?  "<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "<C-y>" : "<CR>"
" imap <expr><TAB> pumvisible() ? "<C-n>" : neosnippet#jumpable() ?  "<Plug>(neosnippet_expand_or_jump)" : "<TAB>"


" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

map <C-m> :NERDTreeToggle<CR>

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
colorscheme molokai


" Indent
set autoindent
set smartindent
set cindent
set tabstop=4
set shiftwidth=4 

"Key Mapping
inoremap <silent> jk <ESC>
noremap Enter o<ESC>
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
