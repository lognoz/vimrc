" ============================================================================
" File:        normal.vim
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

" Use black hole register to delete the empty line
nnoremap <expr> dd (getline('.') =~ '^\s*$' && v:register == '"' ? '"_' : '').'dd'

" Increment numbers
nnoremap + <c-a>
nnoremap - <c-x>

" Tab and shift-tab to traverse jump list
noremap <tab> <c-o>
noremap <s-tab> <c-i>

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
