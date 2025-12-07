-- Visual mode mappings for copying to system clipboard
vim.keymap.set('v', '<leader>y', '"+y', { silent = true })

-- Normal mode mappings for copying to system clipboard
vim.keymap.set('n', '<leader>Y', '"+yg_', { silent = true })
vim.keymap.set('n', '<leader>y', '"+y', { silent = true })
vim.keymap.set('n', '<leader>yy', '"+yy', { silent = true })

-- Normal mode mappings for pasting from system clipboard
vim.keymap.set('n', '<leader>p', '"+p', { silent = true })
vim.keymap.set('n', '<leader>P', '"+P', { silent = true })

-- Visual mode mappings for pasting from system clipboard
vim.keymap.set('v', '<leader>p', '"+p', { silent = true })
vim.keymap.set('v', '<leader>P', '"+P', { silent = true })
