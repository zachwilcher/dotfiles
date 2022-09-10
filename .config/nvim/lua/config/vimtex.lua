
vim.g.vimtex_compiler_progname = 'nvr'
vim.g.vimtex_view_method='zathura'
vim.g.vimtex_quickfix_mode=0
vim.g.vimtex_compiler_latexmk = {
             ['backend'] = 'nvim',
             ['background'] = 1,
             ['build_dir'] = 'out',
             ['callback'] = 1,
             ['continuous'] = 1,
             ['executable'] = 'latexmk',
             ['hooks'] = {},
             ['options'] = {
               '-pdf',
               '-verbose',
               '-file-line-error',
               '-synctex=1',
               '-interaction=nonstopmode',
             },
            }

vim.g.vimtex_compiler_latexmk_engines = {
	['_'] = '-lualatex',
	['lualatex'] =  '-lualatex',
	['xelatex'] = '-xelatex',
	['pdflatex'] =     '-pdf',
	['dvipdfex'] =     '-pdfdvi',
	['context (pdftex)'] = '-pdf -pdflatex=texexec',
        ['context (luatex)'] = '-pdf -pdflatex=context',
	--['context (xetex)']  = '-pdf -pdflatex=''texexec --xtx''',
}
