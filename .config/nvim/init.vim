" init.vim

source `=stdpath('config')."/plugged.vim"`

set number relativenumber

"termianl mode escape
tnoremap <Esc> <C-\><C-n>

"xclip register
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

"enable default filetype indentation
filetype plugin indent on


