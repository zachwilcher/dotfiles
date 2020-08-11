call plug#begin(stdpath('data').'/plugged' ) "vim plug

    Plug 'neomake/neomake'
	
    Plug 'https://github.com/iCyMind/NeoSolarized'   
    
    Plug 'https://github.com/sirver/UltiSnips'
        let g:UltiSnipsExpandTrigger="<tab>"
        let g:UltiSnipsJumpForwardTrigger="<tab>"
        let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
        let g:UltiSnipsSnippetDirectories=[stdpath('data')."/UltiSnips", stdpath('data')."/mysnippets"]
        let g:UltiSnipsEditSplit="horizontal" 
    
    Plug 'https://github.com/lervag/vimtex/'
        let g:vimtex_compiler_progname = 'nvr'
        let g:vimtex_view_method='zathura'
        let g:vimtex_quickfix_mode=0
        let g:vimtex_compiler_latexmk = {
            \ 'backend' : 'nvim',
            \ 'background' : 1,
            \ 'build_dir' : 'out',
            \ 'callback' : 1,
            \ 'continuous' : 1,
            \ 'executable' : 'latexmk',
            \ 'hooks' : [],
            \ 'options' : [
            \   '-pdf',
            \   '-verbose',
            \   '-file-line-error',
            \   '-synctex=1',
            \   '-interaction=nonstopmode',
            \ ],
            \}
        let g:vimtex_compiler_latexmk_engines = {
            \ '_'                : '-lualatex',
            \ 'lualatex'         : '-lualatex',
            \ 'xelatex'          : '-xelatex',
            \ 'pdflatex'         : '-pdf',
            \ 'dvipdfex'         : '-pdfdvi',
            \ 'context (pdftex)' : '-pdf -pdflatex=texexec',
            \ 'context (luatex)' : '-pdf -pdflatex=context',
            \ 'context (xetex)'  : '-pdf -pdflatex=''texexec --xtx''',
            \}


            
call plug#end()

"neomake
call neomake#configure#automake('w')

"solarized
colorscheme NeoSolarized
set background=dark
set termguicolors

"deadkeys
imap <leader><leader>d :call ToggleDeadKeys()<CR>
nmap <leader><leader>d :call ToggleDeadKeys()<CR>a
