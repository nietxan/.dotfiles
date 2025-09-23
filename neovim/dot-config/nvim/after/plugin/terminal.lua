local function open_terminal_bottom()
    vim.cmd('botright split')
    vim.cmd('terminal')
    vim.cmd('startinsert')
end

vim.keymap.set('n', '<leader>t', open_terminal_bottom)
vim.keymap.set('t', '<C-n>', '<C-\\><C-n><C-w>w')
vim.keymap.set('n', '<leader>\'', '<C-w>w')

vim.api.nvim_create_autocmd('BufEnter', {
    group = vim.api.nvim_create_augroup('terminal_insert', { clear = true }),
    pattern = 'term://*',
    callback = function()
        vim.cmd('startinsert')
    end,
})

vim.api.nvim_create_autocmd('TermOpen', {
    group = vim.api.nvim_create_augroup('terminal_size', { clear = true }),
    callback = function()
        vim.cmd('resize 15')
    end,
})
