local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>l', builtin.live_grep, {})

require('telescope').setup{ 
	defaults = { 
		file_ignore_patterns = { 
			"node_modules", "%.git/"
		},
	},
	pickers = {
		find_files = {
			hidden = true,
		},
		live_grep = {
			additional_args = function()
				return { 
					"--hidden", 
					"--glob", "!.git/", 
					"--glob", "!node_modules/" 
				}
			end,
		},
	},
}
