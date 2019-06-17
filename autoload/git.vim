function! s:get_matchs()
	if len(system('git rev-parse --git-dir 2> /dev/null')) > 0
		let diff = system('git diff --cached --name-only')
		return split(diff, "\n")
	else
		return []
	endif
endfunction

function! s:get_input_text(matchs)
	let cpt = 1
	let text = ''

	for name in a:matchs
		let text .= cpt . ': "' . name . '"' . "\n"
		let cpt += 1
	endfor

	return text . 'Type number and <Enter> (empty cancel): '
endfunction

function! git#set_helpers() abort
	inoremap <expr> <c-f> git#autocomplete()
endfunction

function! git#autocomplete()
	let matchs = s:get_matchs()

	if len(matchs) == 0
		return ''
	endif

	call inputsave()
	let response = input(s:get_input_text(matchs))
	call inputrestore()

	if response =~# '^\d\+$'
		return get(matchs, response - 1, '')
	endif

	return ''
endfunction
