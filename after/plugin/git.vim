" Go to non-staged changes in file
noremap <up> :GitGutterPrevHunk<cr>
noremap <down> :GitGutterNextHunk<cr>

" Git Fugitive mappings
nnoremap <leader>ga :Git add %:p<cr><cr>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>go :Git checkout<space>
nnoremap <leader>gc :Gcommit<cr>
nnoremap <leader>gb :Git branch<cr>
nnoremap <leader>gl :Git log<cr>
nnoremap <leader>gpl :GitPullHead<cr>
nnoremap <leader>gps :GitPushHead<cr>
