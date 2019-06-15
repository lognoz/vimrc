if has('autocmd')
	augroup Restore
		autocmd!
		autocmd BufWinLeave ?* mkview
		autocmd BufWinEnter ?* silent loadview
	augroup END

	augroup HighlightWhitespace
		match Whitespace /\s\+$/
		autocmd BufWinEnter * match Whitespace /\s\+$/
		autocmd InsertEnter * match Whitespace /\s\+\%#\@<!$/
		autocmd InsertLeave * match Whitespace /\s\+$/
		autocmd BufWinLeave * call clearmatches()
	augroup END

	augroup RemoveHighlightingSearch
		autocmd InsertEnter * :let @/=""
		autocmd InsertLeave * :let @/=""
	augroup END
endif
