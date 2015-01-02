" ----- Vundle config -----
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'mattn/emmet-vim'
"Plugin 'wincent/command-t'
Plugin 'msanders/snipmate.vim'
"Plugin 'mileszs/ack.vim'
Plugin 'majutsushi/tagbar'
Plugin 'altercation/vim-colors-solarized'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
"Plugin 'ervandew/supertab'
"Plugin 'marijnh/tern_for_vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on
set number
set showmode
set showcmd
set ruler
"set ignorecase
set tabstop=4
set shiftwidth=4
set expandtab

set guifont=Menlo:h14

set foldmethod=syntax
set foldlevel=1
set foldnestmax=1
set foldlevelstart=0
let javascript_fold=1       " JavaScript
let xml_syntax_folding=1    " XML

let NERDTreeChDirMode=2

let g:tagbar_sort = 0
let g:tagbar_compact = 1

function! Tagbar_Open()
    TagbarOpen
    wincmd K
    wincmd j
    wincmd L
endfunction

" Key Mapping
let mapleader="m"

" Normal Mode
nnoremap <leader>ct :CommandT<CR>
nnoremap <leader>ntt :NERDTreeToggle<CR>
nnoremap <leader>tbt :TagbarToggle<CR>
nnoremap <leader>tbo :call Tagbar_Open()<CR>

" Insert Mode
"inoremap

" Visual Mode
"vnoremap

