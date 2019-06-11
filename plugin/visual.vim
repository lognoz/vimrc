" Make dot work over visual line selections
xnoremap . :norm.<cr>

" Execute a macro over visual line selections
xnoremap Q :'<,'>:normal @q<cr>

" Search
nnoremap <esc> :nohlsearch<cr>

" Indentation
vnoremap < <gv
vnoremap > >gv
vnoremap = =gv

" Lines movements
vnoremap <c-j> :m '>+1<cr>gv=gv
vnoremap <c-k> :m '<-2<cr>gv=gv
