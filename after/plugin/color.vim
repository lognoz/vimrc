function s:colorscheme()
	colorscheme onedark

	highlight Normal        ctermbg=0
	highlight LineNr        ctermfg=239
	highlight NonText       ctermfg=234
	highlight CursorLine    ctermbg=233
	highlight SpecialKey    ctermfg=234
	highlight Pmenu         ctermbg=232   ctermfg=239
	highlight PmenuSel      ctermfg=250   ctermbg=232
	highlight StatusLineNC  ctermbg=233
	highlight Search        ctermbg=none  ctermfg=none  cterm=bold,underline
	highlight IncSearch     ctermbg=none  ctermfg=none  cterm=bold,underline
endfunction

if has('autocmd')
	augroup ColorScheme
		autocmd!
		autocmd FocusGained * call s:colorscheme()
	augroup END

	call s:colorscheme()
endif
