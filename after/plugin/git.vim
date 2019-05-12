function! AutocompleteCommitStandard(lead, line, cursor)
	let lead = escape(a:lead, "\"")
	let list = ['"Add ', '"Drop ', '"Fix ', '"Bump ', '"Refactor ', '"Reformat ', '"Rephrase ', '"Optimize ', '"Document ', '"Update ']
	return filter(list, 'v:val =~ "^'. lead .'"')
endfunction

function! CommitMessage(message)
	execute ":Gcommit -m " . a:message . "\<cr>"
endfunction

command! -nargs=1 -complete=customlist,AutocompleteCommitStandard Gmessage call CommitMessage(<f-args>)
command! -bar -nargs=* GitPullHead execute 'Git pull' <q-args> 'origin' fugitive#head()
command! -bar -nargs=* GitPushHead execute 'Git push' <q-args> 'origin' fugitive#head()
