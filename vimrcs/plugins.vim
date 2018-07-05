" Vim preferences
" Maintainer:   Marc-Antoine Loignon <info@lognoz.com>
" Last Change:  2018-06-07
" Version:      1.0.0

" Section: Plugins configuration
" Load plugins {{{

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	" Dependencies
	Plugin 'VundleVim/Vundle.vim'          " Plugin manager

	" Files managers
	Plugin 'kien/ctrlp.vim'                " Search in all files
	Plugin 'scrooloose/nerdtree'           " Files managers

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

" }}}
" Nerdtree plugin {{{

noremap <c-t> :NERDTreeToggle<cr>
let g:NERDTreeMouseMode = 3

" }}}
" Tagbar configuration {{{

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
" Mappings {{{

nnoremap <leader>ga :Git add %:p<cr><cr>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>go :Git checkout<space>
nnoremap <leader>gc :Gmessage<space>
nnoremap <leader>gb :Git branch<cr>
nnoremap <leader>gl :Git log<cr>
nnoremap <leader>gpl :GitPullHead<cr>
nnoremap <leader>gps :GitPushHead<cr>

" }}}
" Functions {{{

function!  AutocompleteCommitStandard(lead, line, cursor)
	let lead = escape(a:lead, "\"")
	let list = ['"Add ', '"Drop ', '"Fix ', '"Bump ', '"Refactor ', '"Reformat ', '"Rephrase ', '"Optimize ', '"Document ', '"Update ']
	return filter(list, 'v:val =~ "^'. lead .'"')
	endfunction

function! CommitMessage(message)
	execute ":Gcommit -m " . a:message . "\<cr>"
	endfunction

" }}}
" Commands {{{

command! -nargs=1 -complete=customlist,AutocompleteCommitStandard Gmessage call CommitMessage(<f-args>)
command! -bar -nargs=* GitPullHead execute 'Git pull' <q-args> 'origin' fugitive#head()
command! -bar -nargs=* GitPushHead execute 'Git push' <q-args> 'origin' fugitive#head()

" }}}
