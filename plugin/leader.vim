" Change map leader
map <space> <leader>

" Copy and paste in clipboard
nnoremap <leader>p "+p
nnoremap <leader>y "+y

" Shortcut to write
nnoremap <leader>w :w<cr>

" Tabs movements
map <leader>1 1gt
map <leader>2 2gt
map <leader>3 3gt
map <leader>4 4gt
map <leader>5 5gt
map <leader>6 6gt
map <leader>7 7gt
map <leader>8 8gt

" Git mappings
nnoremap <leader>ga :Git add %:p<cr><cr>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>go :Git checkout<space>
nnoremap <leader>gc :Gcommit<cr>i
nnoremap <leader>gb :Git branch<cr>
nnoremap <leader>gl :Git log<cr>
nnoremap <leader>gpl :GitPullHead<cr>
nnoremap <leader>gps :GitPushHead<cr>


" Plugins mappings
noremap <leader>gu :GundoToggle<cr>
noremap <leader>t :NERDTreeToggle<cr>
noremap <leader>/ :FZF<cr>
