" Vim preferences
" Maintainer:   Marc-Antoine Loignon <info@lognoz.com>
" Last Change:  2018-06-08
" Version:      1.0.0

" Section: Preferences
" Editing behaviour {{{

set autoread         " auto read when file is changed from outside
set hid              " hiding buffers even though they contain modifications
set mouse=a          " enable mouse
set noruler          " turn off ruler
set showcmd          " show commands
set showmode         " show current mode
set wildchar=<tab>	" start wild expansion using <tab>
set wildmenu         " define wildmenu
set cursorline       " highlight cursor line

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

" Change map leader
map <space> <leader>

" Copy and paste in clipboard
noremap P "+p
noremap Y "+y

" Shortcut to write
nnoremap <leader>w :w<cr>

" Use black hole register to delete the empty line
noremap <expr> dd (getline('.') =~ '^\s*$' && v:register == '"' ? '"_' : '').'dd'

" Increment numbers
noremap + <c-a>
noremap - <c-x>

" Tab and shift-tab to traverse jump list
noremap <tab> <c-o>
noremap <s-tab> <c-i>

" Disabled arrows keys
noremap <up>      <nop>
noremap <down>    <nop>
noremap <left>    <nop>
noremap <right>   <nop>

inoremap <up>     <nop>
inoremap <down>   <nop>
inoremap <left>   <nop>
inoremap <right>  <nop>

" Rewrite command
command! WQ wq
command! Wq wq
command! W w
command! Q q

" Reloading vimrc
nnoremap <leader>r :source ~/.vim/vimrc

" }}}
" Indentation {{{

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

nnoremap = ==
nnoremap < <<
nnoremap > >>

" }}}
" Backup, undo, swap {{{

set noswapfile

set backup
set backupdir=~/.vim/tmp/backup

set undofile
set undodir=~/.vim/tmp/undo
set undolevels=1000

" }}}
" Search {{{

set ignorecase
set smartcase
set gdefault
set hlsearch
set incsearch
set showmatch

autocmd InsertEnter * :let @/=""
autocmd InsertLeave * :let @/=""

" }}}
" Lines movements {{{

noremap <c-j> :m .+1<cr>==
noremap <c-k> :m .-2<cr>==
vnoremap <c-j> :m '>+1<cr>gv=gv
vnoremap <c-k> :m '<-2<cr>gv=gv

" }}}
" Tabs movements {{{

map <leader>1 1gt
map <leader>2 2gt
map <leader>3 3gt
map <leader>4 4gt
map <leader>5 5gt
map <leader>6 6gt
map <leader>7 7gt
map <leader>8 8gt

" }}}
" Autocomplete {{{

set completeopt=longest,menuone
autocmd FileType css,scss set omnifunc=csscomplete#CompleteCSS

" }}}

" Section: Fonctionalities
" Html tags {{{

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

" }}}
" Autofocus in file {{{

augroup SaveCursor
	autocmd!
	autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END

" }}}
" Update last change date {{{

function! SetEvents(type)
	let line = search("\" Last Change:")
	let date = strftime('%Y-%m-%d')
endfunction

autocmd FileType vim :call SetEvents('vim')

" }}}
