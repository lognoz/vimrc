" ============================================================================
" File:        vundle.vim
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

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	" Dependencies
	Plugin 'VundleVim/Vundle.vim'          " Plugin manager

	" Git helpers
	Plugin 'airblade/vim-gitgutter'        " Show git diff
	Plugin 'tpope/vim-fugitive'            " Make git usable with vim

	" Text helpers
	Plugin 'tpope/vim-speeddating'         " Provide date, roman number increment and decrement

	" Dev tools
	Plugin 'mattn/emmet-vim'               " Provide support for HTML tags
	Plugin 'tpope/vim-surround'            " Provide mapping (parentheses, brackets, quotes, etc.)
	Plugin 'sjl/gundo.vim'                 " Visualize vim undo
	Plugin 'jiangmiao/auto-pairs'          " Autoclose brackets, quotes, etc.
	Plugin 'terryma/vim-multiple-cursors'  " Replace by groups of same word

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
