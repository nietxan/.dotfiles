vim.api.nvim_create_augroup('dotfiles', { clear = true })
vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
    pattern = 'dot-zshrc',
    command = 'set filetype=zsh',
    group = 'dotfiles',
})
vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
    pattern = 'dot-gitconfig',
    command = 'set filetype=gitconfig',
    group = 'dotfiles',
})
vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
    pattern = 'dot-tmux.conf',
    command = 'set filetype=tmux',
    group = 'dotfiles',
})
vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
    pattern = 'dot-zprofile',
    command = 'set filetype=zsh',
    group = 'dotfiles',
})
