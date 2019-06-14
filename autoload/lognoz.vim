" Turn on spell-checking.
function! lognoz#spell()
	if has('syntax')
		setlocal spell
		setlocal spelllang=en

		if !empty(glob('~/vim/spell/en.utf-8.add'))
			setlocal spellfile=~/.vim/spell/en.utf-8.add
		endif
	endif
endfunction
