vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use 'nvim-lua/plenary.nvim'

	use 'nvim-treesitter/nvim-treesitter'

	use 'tpope/vim-fugitive'

	use 'mbbill/undotree'

	use {
		'windwp/nvim-autopairs',
		config = function() require('nvim-autopairs').setup {} end
	}

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.x',
		requires = { 'nvim-lua/plenary.nvim' }
	}

	use {
		"susensio/magic-bang.nvim",
		config = function() require("magic-bang").setup() end
	}
end)
