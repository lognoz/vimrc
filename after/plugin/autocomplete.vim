let g:ulti_expand_or_jump_res = 0
let g:ycm_key_list_select_completion = ['<down>', '<up>']

let g:UltiSnipsSnippetsDir = '~/.vim/snippet'
let g:UltiSnipsSnippetDirectories=['snippet']
let g:UltiSnipsJumpForwardTrigger='<tab>'
let g:UltiSnipsListSnippets='<c-e>'

function! g:UltiSnips_Complete()
	call UltiSnips#ExpandSnippet()
	if g:ulti_expand_res == 0
		if pumvisible()
			return "\<c-n>"
		else
			call UltiSnips#JumpForwards()
			if g:ulti_jump_forwards_res == 0
				return "\<tab>"
			endif
		endif
	endif
	return ''
endfunction

au BufEnter * exec 'inoremap <silent> ' . g:UltiSnipsExpandTrigger . ' <C-R>=g:UltiSnips_Complete()<cr>'

" This mapping enter key to <C-y> to chose the current highlight item and
" close the selection list, same as other IDEs.
inoremap <expr> <cr> pumvisible() ? "\<c-y>" : "\<c-g>u\<cr>"
