vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use 'nvim-lua/plenary.nvim'

	use 'ThePrimeagen/harpoon'

	use 'nvim-treesitter/nvim-treesitter'

	use 'tpope/vim-fugitive'

	use 'mzarnitsa/psql'

	use 'ellisonleao/gruvbox.nvim'

	use 'ThePrimeagen/vim-be-good'

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

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v4.x',
		requires = {
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},
			{'neovim/nvim-lspconfig'},
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
		}
	}
end)
