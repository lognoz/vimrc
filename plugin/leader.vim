" ============================================================================
" File:        leader.vim
" Author:      Marc-Antoine Loignon <info@lognoz.com>
" Licence:     Vim licence
" Website:     https://www.gitlab.com/lognoz/vimrc
" Version:     1.1
"
"  Permission is hereby granted to use and distribute this code, with or
"  without modifications, provided that this copyright notice is copied
"  with it. Like anything else that's free, this vimrc is provided *as is*
"  and comes with no warranty of any kind, either expressed or implied. In
"  no event will the copyright holder be liable for any damamges resulting
"  from the use of this software.
" ============================================================================

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
nnoremap <leader>gc :Gmessage<space>
nnoremap <leader>gb :Git branch<cr>
nnoremap <leader>gl :Git log<cr>
nnoremap <leader>gpl :GitPullHead<cr>
nnoremap <leader>gps :GitPushHead<cr>
