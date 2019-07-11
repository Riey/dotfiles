set showmatch
set number
set mouse=a
set formatoptions+=o
set expandtab
set tabstop=4
set shiftwidth=4
set laststatus=2
set nojoinspaces

set nostartofline
set autochdir

call plug#begin('~/.local/share/nvim/plugged')

" Plug 'Valloric/YouCompleteMe'

Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'racer-rust/vim-racer'
Plug 'cespare/vim-toml'
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'luochen1990/rainbow'

Plug 'dracula/vim'

call plug#end()

colorscheme dracula

autocmd FileType json syntax match Comment +\/\/.\+$+

let g:rainbow_active = 1

