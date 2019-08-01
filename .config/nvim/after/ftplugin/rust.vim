function! CargoCom(command)
    let l:root_path = lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'Cargo.toml')
    execute 'split | terminal cd' l:root_path '&& cargo' a:command
endfunction

nnoremap <C-c><C-c> :call CargoCom('check')<CR>
nnoremap <C-c><C-t> :call CargoCom('test')<CR>
nnoremap <C-c><C-r> :call CargoCom('run')<CR>
nnoremap <C-c><C-b> :call CargoCom('build')<CR>
nnoremap <C-c><C-f> :call CargoCom('fmt')<CR>

if executable('ra_lsp_server')
    au User lsp_setup call lsp#register_server({
        \   'name': 'rust-analyzer',
        \   'cmd': { server_info->[&shell, &shellcmdflag, 'ra_lsp_server'] },
        \   'root_uri': { server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'Cargo.toml'))},
        \   'whitelist': ['rust'],
        \ })
endif
