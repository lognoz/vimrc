" ============================================================================
" File:        git.vim
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

" Mappings {{{1

nnoremap <leader>ga :Git add %:p<cr><cr>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>go :Git checkout<space>
nnoremap <leader>gc :Gmessage<space>
nnoremap <leader>gb :Git branch<cr>
nnoremap <leader>gl :Git log<cr>
nnoremap <leader>gpl :GitPullHead<cr>
nnoremap <leader>gps :GitPushHead<cr>

" Functions {{{1

function!  AutocompleteCommitStandard(lead, line, cursor)
	let lead = escape(a:lead, "\"")
	let list = ['"Add ', '"Drop ', '"Fix ', '"Bump ', '"Refactor ', '"Reformat ', '"Rephrase ', '"Optimize ', '"Document ', '"Update ']
	return filter(list, 'v:val =~ "^'. lead .'"')
	endfunction

function! CommitMessage(message)
	execute ":Gcommit -m " . a:message . "\<cr>"
	endfunction

" Commands {{{1

command! -nargs=1 -complete=customlist,AutocompleteCommitStandard Gmessage call CommitMessage(<f-args>)
command! -bar -nargs=* GitPullHead execute 'Git pull' <q-args> 'origin' fugitive#head()
command! -bar -nargs=* GitPushHead execute 'Git push' <q-args> 'origin' fugitive#head()
