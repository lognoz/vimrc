let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1

let g:mucomplete#enable_auto_at_startup = 1
let g:mucomplete#smart_enter = 1

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsSnippetsDir = '~/.vim/snippet'
let g:UltiSnipsSnippetDirectories=["snippet"]
let g:UltiSnipsEditSplit="vertical"

noremap <leader>u :GundoToggle<cr>
noremap <leader>t :NERDTreeToggle<cr>
