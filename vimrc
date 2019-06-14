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
		packadd! indent-line
		packadd! multiple-cursors
		packadd! nerdtree
		packadd! onedark
		packadd! php
		packadd! speed-dating
		packadd! surround
		packadd! syntastic
		packadd! ultisnips
		packadd! undotree
	endif
endif
