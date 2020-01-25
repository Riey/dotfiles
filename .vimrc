set nocompatible
set nowrap
syntax on
set number
set clipboard=unnamedplus
set mouse=a
set backspace=indent,eol,start

set expandtab
set tabstop=4
set shiftwidth=4
set laststatus=2
set nostartofline
set cindent
set autoindent
set smartindent

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
