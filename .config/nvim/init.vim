" init.vim

source `=stdpath('config')."/plugged.vim"`

set conceallevel=1

set tabstop=8 "tabs are 8 spaces
set softtabstop=4 "tabs feel like 4 spaces
set shiftwidth=4 "autoindent tabs are 4 spaces
set expandtab "tabs are spaces

set number
set relativenumber

syntax on

set incsearch 
set hlsearch

tnoremap <Esc> <C-\><C-n> "termianl mode escape

let g:clipboard = {
    \ 'name': 'myClip',
    \ 'copy': {
    \     '*': 'xclip -selection primary -in',
    \     '+': 'xclip -selection clipboard -in',
    \ },
    \ 'paste': {
    \     '*': 'xclip -selection primary -out',
    \     '+': 'xclip -selection clipboard -out',
    \ },
    \ 'cache_enabled': 1,
    \}
