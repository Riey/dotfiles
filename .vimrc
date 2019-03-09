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

" Vundle config
" Required for Vundle
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Rust file detection and syntax highlighting
Plugin 'rust-lang/rust.vim'
" TOML syntax
Plugin 'cespare/vim-toml'
" Syntax checking
Plugin 'scrooloose/syntastic'
" lightweight status bar
Plugin 'bling/vim-airline'
" Seamless navigation between tmux panes and vim splits
Plugin 'christoomey/vim-tmux-navigator'
" Dracula theme
Plugin 'dracula/vim'
" enhance netrw (file navigation)
"Plugin 'tpope/vim-vinegar'

" Now that all plugins have been added:
call vundle#end()
filetype plugin indent on

set t_Co=256

"To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

function SmoothScroll(up)
    if a:up
        let scrollaction="^Y"
    else
        let scrollaction="^E"
    endif
    exec "normal " . scrollaction
    redraw
    let counter=1
    while counter<&scroll
        let counter+=1
        sleep 10m
        redraw
        exec "normal " . scrollaction
    endwhile
endfunction

