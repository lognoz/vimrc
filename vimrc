if v:progname == 'vi'
	set noloadplugins
endif

if has('gui')
	set guioptions-=L
	set guioptions-=R
	set guioptions-=T
	set guioptions-=b
	set guioptions-=l
	set guioptions-=m
	set guioptions-=r
endif

syntax on
filetype on

filetype plugin on
filetype indent on

if &loadplugins
	if has('packages')
		packadd! easy-align
		packadd! editorconfig
		packadd! fugitive
		packadd! gitgutter
		packadd! local-vimrc
		packadd! markup-language
		packadd! multiple-cursors
		packadd! nerdtree
		packadd! onedark
		packadd! php
		packadd! speed-dating
		packadd! surround
		packadd! syntastic
		packadd! ultisnips
		packadd! undotree
	else
		source $HOME/.vim/pack/pathogen/opt/pathogen/autoload/pathogen.vim
		call pathogen#infect('pack/bundle/opt/{}')
	endif
endif

" Add local vimrc loader
let g:localvimrc_name = ['.vimrc']
let g:localvimrc_ask = 0
