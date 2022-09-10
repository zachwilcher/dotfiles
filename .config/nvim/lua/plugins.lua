local packer_exists = pcall(vim.cmd, [[packadd packer.nvim]])


return require('packer').startup(
function(use)
	use {"wbthomason/packer.nvim", opt = true }
        use {"overcache/NeoSolarized", config = function() require('config/neosolarized') end }
        use {"kyazdani42/nvim-web-devicons"}
        use {"kyazdani42/nvim-tree.lua", config = function() require('config/nvim-tree') end }
        use {'ojroques/nvim-bufdel' }
	use {'lervag/vimtex/', config=require('config/vimtex') }

        use {'purofle/vim-mindustry-logic'}
        use {'neoclide/coc.nvim', branch = 'release', config = function() require('config/coc') end}

end)
