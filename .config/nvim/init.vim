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

set updatetime=1000

filetype plugin on

call plug#begin('~/.local/share/nvim/plugged')

Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'cespare/vim-toml'
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'luochen1990/rainbow'
Plug 'roman/golden-ratio'

Plug 'dracula/vim'

call plug#end()

colorscheme dracula

" Terminal mode:
tnoremap <M-h> <C-\><C-n><C-w>h
tnoremap <M-j> <C-\><C-n><C-w>j
tnoremap <M-k> <C-\><C-n><C-w>k
tnoremap <M-l> <C-\><C-n><C-w>l
" Insert mode:
inoremap <M-h> <Esc><C-w>h
inoremap <M-j> <Esc><C-w>j
inoremap <M-k> <Esc><C-w>k
inoremap <M-l> <Esc><C-w>l
" Visual mode:
vnoremap <M-h> <Esc><C-w>h
vnoremap <M-j> <Esc><C-w>j
vnoremap <M-k> <Esc><C-w>k
vnoremap <M-l> <Esc><C-w>l
" Normal mode:
nnoremap <M-h> <C-w>h
nnoremap <M-j> <C-w>j
nnoremap <M-k> <C-w>k
nnoremap <M-l> <C-w>l

autocmd FileType json syntax match Comment +\/\/.\+$+

let g:rainbow_active = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

let g:lsp_diagnostics_enabled = 1
let g:lsp_signs_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <CR>    pumvisible() ? "\<C-y>" : "\<CR>"

imap <c-space> <Plug>(asyncomplete_force_refresh)

autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

if executable('ra_lsp_server')
    au User lsp_setup call lsp#register_server({
        \   'name': 'rust-analyzer',
        \   'cmd': { server_info->[&shell, &shellcmdflag, 'ra_lsp_server'] },
        \   'root_uri': { server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'Cargo.toml'))},
        \   'whitelist': ['rust'],
        \ })
endif

