set autoread         " Auto read when file is changed from outside
set cursorline       " Highlight cursor line
set hid              " Hiding buffers even though they contain modifications
set history=50       " Keep 50 lines of command line history
set mouse=a          " Enable mouse
set nocompatible     " Use Vim defaults instead of 100% vi compatibility
set noruler          " Turn off ruler
set showcmd          " Show commands
set showmode         " Show current mode
set wildchar=<tab>   " Start wild expansion using <tab>
set wildmenu         " Define wildmenu
set cm=blowfish2     " Encryption type
set noswapfile       " No swap

" Allow local vimrc
set exrc
set secure

" Active fold method
set foldmethod=syntax
set fdm=marker

" Backspace and delete
set backspace=indent,eol,start

" Define line number
set number
set relativenumber

" Disable sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Make the keyboard faster
set ttyfast
set timeout timeoutlen=1000 ttimeoutlen=50

" Showing spaces, tabs, etc.
set list
set listchars=tab:\»\ ,trail:·,eol:¬,extends:→,precedes:←

" Suffixes that get lower priority when doing tab completion for filenames.
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc,.png,.jpg

" Completion settings
set pumheight=12

" Indentation
set autoindent
set copyindent
set noexpandtab
set preserveindent
set shiftwidth=3
set smartindent
set softtabstop=0
set tabstop=3

" Search
set ignorecase
set smartcase
set gdefault
set hlsearch
set incsearch
set showmatch

" Backup
set backup
set backupdir=~/.vim/tmp/backup

" Undo
set undofile
set undodir=~/.vim/tmp/undo
set undolevels=1000

" View
set viewdir=~/.vim/tmp/view
set viewoptions=cursor,folds

" Tags
set tags=./tags;,tags;
