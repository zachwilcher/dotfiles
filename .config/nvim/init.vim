
lua require('common')

set number relativenumber hidden

" filetype detection for solidity
autocmd BufNewFile,BufRead *.sol set filetype=solidity

function UseExpandTab(width=4)
  set tabstop=8 
  let &softtabstop=a:width
  let &shiftwidth=a:width
  set expandtab
endfunction

autocmd FileType make setlocal noexpandtab
autocmd FileType lua call UseExpandTab(2)
autocmd FileType vim call UseExpandTab(2)
autocmd FileType python call UseExpandTab(4)
autocmd FileType javascript call UseExpandTab(2)
autocmd FileType xml call UseExpandTab(2)
autocmd FileType json call UseExpandTab(2)
autocmd FileType typescript call UseExpandTab(2)
autocmd FileType solidity call UseExpandTab(2)
autocmd FileType haskell call UseExpandTab(2)


"surround word 
nnoremap <leader>( wbi(<esc>ea)<esc>
nnoremap <leader>{ wbi{<esc>ea}<esc>
nnoremap <leader>[ wbi[<esc>ea]<esc>
nnoremap <leader>' wbi'<esc>ea'<esc>
nnoremap <leader>" wbi"<esc>ea"<esc>
nnoremap <leader>< wbi<<esc>ea><esc>
nnoremap <leader>$ wbi$<esc>ea$<esc>

"replaces character with space and stores character in main register
nnoremap <leader>x vyr<space>


nnoremap <leader>y m'ggVG"+y''

"terminal
nnoremap <leader>t <c-w>n<c-w>J:resize 10<cr>:term<cr>a

let $VIMINIT = join([stdpath("config"), "init.vim"], "/")

let $VIMPLUGGED = join([stdpath("config"), "plugged.vim"], "/")

source $VIMPLUGGED

