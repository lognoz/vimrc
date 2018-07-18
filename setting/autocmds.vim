" ============================================================================
" File:        autocmds.vim
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

if has('autocmd')
	augroup HighlightWhitespace
		match Whitespace /\s\+$/
		autocmd BufWinEnter * match Whitespace /\s\+$/
		autocmd InsertEnter * match Whitespace /\s\+\%#\@<!$/
		autocmd InsertLeave * match Whitespace /\s\+$/
		autocmd BufWinLeave * call clearmatches()
	augroup END

	augroup Restore
		autocmd!
		autocmd BufWinLeave ?* mkview
		autocmd BufWinEnter ?* silent loadview
	augroup END
endif
