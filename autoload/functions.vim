" Turn on spell-checking
function! functions#spell() abort
	if has('syntax')
		setlocal complete+=kspell
		setlocal spell
		setlocal spelllang=en

		if !empty(glob('~/vim/spell/en.utf-8.add'))
			setlocal spellfile=~/.vim/spell/en.utf-8.add
		endif
	endif
endfunction

" Switch to plaintext mode
function! functions#plaintext() abort
	setlocal wrap
	setlocal nolist

	" Document width
	setlocal textwidth=74

	" Replace tabs by spaces
	setlocal tabstop=2
	setlocal shiftwidth=2
	setlocal expandtab

	" Turn on spell-checking
	call functions#spell()
endfunction
