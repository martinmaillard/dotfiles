
" Vundle setup
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/syntastic'
Plugin 'editorconfig/editorconfig-vim'

" Vundle setup
call vundle#end()
filetype plugin indent on

colorscheme mustang

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

" Syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 0
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" let g:syntastic_python_checkers=['flake8']
" let g:syntastic_javascript_checkers=['jscs', 'jshint']


" sudo write
cmap W! w !sudo tee % >/dev/null

" Treat long lines as break lines
map j gj
map k gk

" Allow keeping edited buffers open (but hidden)
set hidden

set number
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

