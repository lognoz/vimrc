syntax on
filetype on

filetype plugin on
filetype indent on

if has('packages')
	set rtp+=~/.vim/bundle/Vundle.vim
	call vundle#begin()
		Plugin 'VundleVim/Vundle.vim'          " Plugin manager
		Plugin 'airblade/vim-gitgutter'        " Show git diff
		Plugin 'tpope/vim-fugitive'            " Make git usable with vim
		Plugin 'tpope/vim-speeddating'         " Provide date, roman number increment and decrement
		Plugin 'tpope/vim-surround'            " Provide mapping (parentheses, brackets, quotes, etc.)
		Plugin 'sjl/gundo.vim'                 " Visualize vim undo
		Plugin 'jiangmiao/auto-pairs'          " Autoclose brackets, quotes, etc.
		Plugin 'terryma/vim-multiple-cursors'  " Replace by groups of same word
		Plugin 'scrooloose/nerdtree'           " Project tree
		Plugin 'lifepillar/vim-mucomplete'     " Autocompletion
		Plugin 'sirver/ultisnips'              " Snippets
		Plugin 'stanangeloff/php.vim'          " PHP syntax files
		Plugin 'scrooloose/syntastic'          " Errors checker
		Plugin 'joshdick/onedark.vim'          " Principal theme
	call vundle#end()
endif
