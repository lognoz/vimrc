" ============================================================================
" File:        plugins.vim
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

" Section: Plugins configuration
" Load plugins {{{1

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	" Dependencies
	Plugin 'VundleVim/Vundle.vim'          " Plugin manager

	" Git helpers
	Plugin 'airblade/vim-gitgutter'        " Show git diff
	Plugin 'tpope/vim-fugitive'            " Make git usable with vim
	Plugin 'gregsexton/gitv'               " Gitk for vim

	" Text helpers
	Plugin 'tpope/vim-speeddating'         " Provide date, roman number increment and decrement

	" Dev tools
	Plugin 'mattn/emmet-vim'               " Provide support for HTML tags
	Plugin 'tpope/vim-surround'            " Provide mapping (parentheses, brackets, quotes, etc.)
	Plugin 'sjl/gundo.vim'                 " Visualize vim undo
	Plugin 'jiangmiao/auto-pairs'          " Autoclose brackets, quotes, etc.
	Plugin 'terryma/vim-multiple-cursors'  " Replace by groups of same word
	Plugin 'majutsushi/tagbar'             " File information (installation with pacman)

	" Snippets
	Plugin 'garbas/vim-snipmate'           " Provide snippets manager
	Plugin 'MarcWeber/vim-addon-mw-utils'  " Dependency addon
	Plugin 'tomtom/tlib_vim'               " Dependancy library

	" Syntax
	Plugin 'stanangeloff/php.vim'          " PHP syntax files
	Plugin 'scrooloose/syntastic'          " Errors checker

	" Colorscheme
	Plugin 'joshdick/onedark.vim'         " Principal theme
call vundle#end()

" Nerdtree plugin {{{1

noremap <c-t> :NERDTreeToggle<cr>
let g:NERDTreeMouseMode = 3

" Tagbar configuration {{{1

noremap <c-e> :TagbarToggle<cr>
let g:tagbar_autofocus = 1
let g:tagbar_type_php  = {
\ 'ctagstype' : 'php',
\ 'kinds'     : [
		\ 'i:interfaces',
		\ 'c:classes',
		\ 'd:constant definitions',
		\ 'f:functions',
		\ 'j:javascript functions:1'
	\ ]
\ }

" }}}
" Gundo mapping {{{

noremap <c-g> :GundoToggle<cr>

" }}}

" Section: Git environment
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
