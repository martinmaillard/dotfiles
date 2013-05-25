
imap kj <esc>

" Navigate splits
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Treat long lines as break lines
map j gj
map k gk

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent
set laststatus=2
set showmatch

" Keep space after cursor when scrolling
set so=7
set ruler
set cmdheight=2
" Case-sensitive search only if it contains upper-case characters
set ignorecase smartcase
set hlsearch
" highlight current line
set cursorline
set showtabline=2
set winwidth=79

syntax enable
set encoding=utf8

" Auto read when a file is modified from the outside
set autoread

" No sounds on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

set wildmenu
