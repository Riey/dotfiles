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
Plug 'bling/vim-airline'

Plug 'dracula/vim'

call plug#end()

colorscheme dracula

autocmd FileType json syntax match Comment +\/\/.\+$+

