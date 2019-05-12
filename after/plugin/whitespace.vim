if has('autocmd')
	augroup HighlightWhitespace
		match Whitespace /\s\+$/
		autocmd BufWinEnter * match Whitespace /\s\+$/
		autocmd InsertEnter * match Whitespace /\s\+\%#\@<!$/
		autocmd InsertLeave * match Whitespace /\s\+$/
		autocmd BufWinLeave * call clearmatches()
	augroup END
endif
