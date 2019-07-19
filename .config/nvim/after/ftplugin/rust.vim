command! -nargs=* CargoCom split | terminal cargo <args>

nnoremap <C-c><C-c> :CargoCom check<CR>
nnoremap <C-c><C-t> :CargoCom test<CR>
nnoremap <C-c><C-r> :CargoCom run<CR>
nnoremap <C-c><C-b> :CargoCom build<CR>
nnoremap <C-c><C-f> :CargoCom fmt<CR>
