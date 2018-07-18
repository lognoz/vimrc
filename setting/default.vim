" ============================================================================
" File:        default.vim
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

" Section: Preferences
" Editing behaviour {{{1

set autoread         " auto read when file is changed from outside
set cursorline       " highlight cursor line
set hid              " hiding buffers even though they contain modifications
set history=50       " keep 50 lines of command line history
set mouse=a          " enable mouse
set nocompatible     " use Vim defaults instead of 100% vi compatibility
set noruler          " turn off ruler
set showcmd          " show commands
set showmode         " show current mode
set wildchar=<tab>   " start wild expansion using <tab>
set wildmenu         " define wildmenu

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

" Encryption
set cm=blowfish2

" Suffixes that get lower priority when doing tab completion for filenames.
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc,.png,.jpg

" Make dot work over visual line selections
xnoremap . :norm.<cr>

" Execute a macro over visual line selections
xnoremap Q :'<,'>:normal @q<cr>

" Indentation {{{1

set autoindent
set copyindent
set noexpandtab
set preserveindent
set shiftwidth=3
set smartindent
set softtabstop=0
set tabstop=3

vnoremap < <gv
vnoremap > >gv
vnoremap = =gv

" Backup, undo, swap, view {{{1

set noswapfile

set backup
set backupdir=~/.vim/tmp/backup

set undofile
set undodir=~/.vim/tmp/undo
set undolevels=1000

set viewdir=~/.vim/tmp/view
set viewoptions=cursor,folds

" Search {{{1

set ignorecase
set smartcase
set gdefault
set hlsearch
set incsearch
set showmatch

autocmd InsertEnter * :let @/=""
autocmd InsertLeave * :let @/=""

nnoremap <esc><esc> :nohlsearch<cr>

" Lines movements {{{1
vnoremap <c-j> :m '>+1<cr>gv=gv
vnoremap <c-k> :m '<-2<cr>gv=gv

" Autocomplete {{{1

set completeopt=longest,menuone
autocmd FileType css,scss set omnifunc=csscomplete#CompleteCSS

" }}}

" Section: Fonctionalities
" Html tags {{{1

function! AutoIndentHtmlTags()
	let line = getline('.')
	let current_position = getcurpos()[2] -1

	if line[current_position] == "<" && line[current_position - 1] == ">"
		return "\<cr>\<cr>\<up>\<tab>"
	else
		return "\<cr>"
	endif
endfunction

inoremap <cr> <c-r>=AutoIndentHtmlTags()<cr>
