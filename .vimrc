source ~/.ideavimrc

" vi iMproved features
set nocompatible
" Don't wrap lines that extend beyond the screen
set nowrap
" Enable syntax highlighting
syntax on
" Display line numbers
set number
" use the system clipboard
set clipboard=unnamed
" enable mouse support because scrolling and selecting is just _too_ convenient
set mouse=a
" allow backspacing over autoindent, linebreaks and the start of the insert
set backspace=indent,eol,start
" display a ruler
set colorcolumn=80

" Insert spaces when <tab> is pressed
set expandtab
" Set how many columns a tab accounts for
set tabstop=4
" Set how many spaces are inserted when <tab> is pressed
set shiftwidth=4
" Always display a status bar
set laststatus=2

set history=10000

call plug#begin('~/.vim/bundle')

" Rust file detection and syntax highlighting
Plug 'rust-lang/rust.vim'
" TOML syntax
Plug 'cespare/vim-toml'
" Syntax checking
Plug 'scrooloose/syntastic'
" lightweight status bar
Plug 'bling/vim-airline'
" Dracula theme
Plug 'dracula/vim'

call plug#end()

colorscheme dracula
