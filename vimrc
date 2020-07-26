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

if &loadplugins
	if has('packages')
		packadd! easy-align
		packadd! editorconfig
		packadd! fugitive
		packadd! gitgutter
		packadd! markup-language
		packadd! multiple-cursors
		packadd! nerdtree
		packadd! onedark
		packadd! php
		packadd! repeat
		packadd! speed-dating
		packadd! surround
		packadd! syntastic
		packadd! ultisnips
		packadd! undotree
		packadd! delimitmate
	else
		source $HOME/.vim/pack/pathogen/opt/pathogen/autoload/pathogen.vim
		call pathogen#infect('pack/bundle/opt/{}')
	endif
endif

syntax on
filetype plugin indent on
