set number
set clipboard=unnamed
set mouse=a
set backspace=indent,eol,start
set colorcolumn=80

set expandtab
set tabstop=4
set shiftwidth=4
set laststatus=2

call plug#begin()

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'tomtom/tcomment_vim' " gc comments
Plug 'tpope/vim-surround'
Plug 'milkypostman/vim-togglelist'
Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
Plug 'neomake/neomake', { 'for': ['rust', 'haskell', 'typescript'] }
Plug 'airblade/vim-gitgutter'
Plug 'w0rp/ale'
Plug 'cespare/vim-toml'

" Haskell Plugins
if executable('ghc')
  Plug 'neovimhaskell/haskell-vim', { 'for': 'haskell' }
  Plug 'owickstrom/neovim-ghci', { 'for': 'haskell' }
endif
" Rust Plugins
if executable('rustc')
  Plug 'rust-lang/rust.vim', { 'for': 'rust' }
  Plug 'racer-rust/vim-racer', { 'for': 'rust' }
  Plug 'timonv/vim-cargo'
endif

call plug#end()

syntax on
set background=dark
colorscheme molokai
highlight ExtraWhitespace ctermbg=red guibg=red

let g:deoplete#enable_at_startup = 1
let g:rustfmt_autosave = 1

