" Vim preferences
" Maintainer:   Marc-Antoine Loignon <info@lognoz.com>
" Last Change:  2018-06-08
" Version:      1.0.0

colorscheme onedark

highlight Normal      ctermbg=8
highlight LineNr      ctermfg=239
highlight NonText     ctermfg=234
highlight CursorLine  ctermbg=233
highlight SpecialKey  ctermfg=234
highlight Pmenu       ctermbg=232  ctermfg=239
highlight PmenuSel    ctermfg=250  ctermbg=232
highlight Whitespace  ctermbg=11

match Whitespace /\s\+$/
autocmd BufWinEnter * match Whitespace /\s\+$/
autocmd InsertEnter * match Whitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match Whitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
