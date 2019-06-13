" Use black hole register to delete the empty line
nnoremap <expr> dd (getline('.') =~ '^\s*$' && v:register == '"' ? '"_' : '').'dd'

" Increment numbers
nnoremap + <c-a>
nnoremap - <c-x>

" Smarter j and k navigation
nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'

" Indentation
nnoremap = ==
nnoremap < <<
nnoremap > >>

" Line mouvement
nnoremap <c-j> :m .+1<cr>==
nnoremap <c-k> :m .-2<cr>==

" Go to non-staged changes in file
map <up> :GitGutterPrevHunk<cr>
map <down> :GitGutterNextHunk<cr>

" Search
nnoremap <esc><esc> :nohlsearch<cr>

" Quick executing throw-away macros with the q register
nnoremap Q @q
