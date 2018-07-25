" ============================================================================
" File:        visual.vim
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

" Make dot work over visual line selections
xnoremap . :norm.<cr>

" Execute a macro over visual line selections
xnoremap Q :'<,'>:normal @q<cr>

" Search
nnoremap <esc><esc> :nohlsearch<cr>

" Indentation
vnoremap < <gv
vnoremap > >gv
vnoremap = =gv

" Lines movements
vnoremap <c-j> :m '>+1<cr>gv=gv
vnoremap <c-k> :m '<-2<cr>gv=gv
