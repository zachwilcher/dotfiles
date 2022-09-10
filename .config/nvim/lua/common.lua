vim.g.mapleader = " "

if vim.fn.executable("xclip") == 1 then
    vim.g.clipboard = {
    	name = 'myClip',
    	cache_enabled = 1,
    	copy = {
    		['*'] = 'xclip -selection primary -in',
    		['+'] = 'xclip -selection clipboard -in'
    	},
    	paste = {
    		['*'] = 'xclip -selection primary -out',
    		['+'] = 'xclip -selection clipboard -out'
    	}
    }

end

vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', {noremap = true})

vim.api.nvim_set_keymap("n", "<C-w>t" , '<C-w>T', {noremap=true}) --case insensitivity

vim.api.nvim_set_keymap('n', '<leader>"', 'viw<esc>a"<esc>bi"<esc>lel', {noremap=true})

vim.api.nvim_set_option('completeopt', 'menuone,noinsert,noselect')
vim.api.nvim_set_option('shortmess', 'Ic')
vim.api.nvim_set_option('exrc', true)
vim.api.nvim_set_option('updatetime', 300)
vim.api.nvim_set_option('cmdheight', 2)
