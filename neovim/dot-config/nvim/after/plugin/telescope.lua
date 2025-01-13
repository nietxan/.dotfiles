local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>f', builtin.find_files, {})

require('telescope').setup{ 
	defaults = { 
		file_ignore_patterns = { 
			"node_modules" 
		}
	}
}
