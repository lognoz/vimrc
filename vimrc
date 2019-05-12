syntax on
filetype on

filetype plugin on
filetype indent on

if has('packages')
	set rtp+=~/.vim/bundle/Vundle.vim
	call vundle#begin()
		Plugin 'VundleVim/Vundle.vim'          " Plugin manager
		Plugin 'airblade/vim-gitgutter'        " Show git diff
		Plugin 'jiangmiao/auto-pairs'          " Autoclose brackets, quotes, etc.
		Plugin 'joshdick/onedark.vim'          " Principal theme
		Plugin 'junegunn/fzf.vim'              " A command-line fuzzy finder
		Plugin 'lifepillar/vim-mucomplete'     " Autocompletion
		Plugin 'scrooloose/nerdtree'           " Project tree
		Plugin 'scrooloose/syntastic'          " Errors checker
		Plugin 'sirver/ultisnips'              " Snippets
		Plugin 'sjl/gundo.vim'                 " Visualize vim undo
		Plugin 'stanangeloff/php.vim'          " PHP syntax files
		Plugin 'terryma/vim-multiple-cursors'  " Replace by groups of same word
		Plugin 'tpope/vim-fugitive'            " Make git usable with vim
		Plugin 'tpope/vim-speeddating'         " Provide date, roman number increment and decrement
		Plugin 'tpope/vim-surround'            " Provide mapping (parentheses, brackets, quotes, etc.)
	call vundle#end()
endif
