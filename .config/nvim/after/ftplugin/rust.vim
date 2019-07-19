let root_path = lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'Cargo.toml')
execute 'cd' fnameescape(root_path)
command! -nargs=* CargoCom split | terminal cargo <args>

nnoremap <C-c><C-c> :CargoCom check<CR>
nnoremap <C-c><C-t> :CargoCom test<CR>
nnoremap <C-c><C-r> :CargoCom run<CR>
nnoremap <C-c><C-b> :CargoCom build<CR>
nnoremap <C-c><C-f> :CargoCom fmt<CR>

if executable('ra_lsp_server')
    au User lsp_setup call lsp#register_server({
        \   'name': 'rust-analyzer',
        \   'cmd': { server_info->[&shell, &shellcmdflag, 'ra_lsp_server'] },
        \   'root_uri': { server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'Cargo.toml'))},
        \   'whitelist': ['rust'],
        \ })
endif
