
filetype plugin indent on

"colorscheme mustang

inoremap kj <esc>
let mapleader=","

" Save
nnoremap <leader>s :update<cr>
inoremap <leader>s <esc>:update<cr>
vnoremap <leader>s <esc>:update<cr>

" Navigate splits
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Create splits
nnoremap <leader>v <c-w>v<c-w>l
nnoremap <leader>h <c-w>s<c-w>j

" NERTTree
nnoremap <leader>n :NERDTreeToggle<cr>

" sudo write
cmap W! w !sudo tee % >/dev/null

" Treat long lines as break lines
map j gj
map k gk

" Allow keeping edited buffers open (but hidden)
set hidden

" Tell vim that my terminal background is dark
set bg=dark

set number
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent
set laststatus=2

" Highlight matching brackets
set showmatch

" Never beep
set visualbell

" Keep space after cursor when scrolling
set so=7
set ruler
set cmdheight=1
" Case-sensitive search only if it contains upper-case characters
set ignorecase smartcase
set incsearch
set hlsearch
nnoremap <cr> :nohlsearch<cr>

" highlight current line
set cursorline

set showtabline=2
set winwidth=79

syntax enable
set encoding=utf8

" Auto read when a file is modified from the outside
set autoread

set tm=500

set wildmenu

" Remove trailing spaces
nnoremap <leader>S :%s/\s\+$//<cr>:let @/=''<cr>

" Markdown titles
nnoremap <leader>4t ^i#### <esc>
nnoremap <leader>5t ^i##### <esc>

" Copy yanked selection to macos clipboard
nnoremap <leader>cc :call system('pbcopy', @0)<cr>

