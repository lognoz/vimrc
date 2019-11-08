if has('autocmd')
	augroup Restore
		autocmd!
		autocmd BufWinLeave ?* mkview
		autocmd BufWinEnter ?* silent! loadview
	augroup END

	augroup RemoveHighlightingSearch
		autocmd InsertEnter * :let @/=""
		autocmd InsertLeave * :let @/=""
	augroup END
endif
