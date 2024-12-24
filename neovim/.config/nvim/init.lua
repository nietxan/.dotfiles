vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.swapfile = false

vim.o.tabstop = 4
vim.o.shiftwidth = 4

vim.cmd([[autocmd FileType go setlocal tabstop=3]])
vim.cmd([[autocmd FileType go setlocal shiftwidth=3]])

vim.cmd([[autocmd FileType cpp setlocal tabstop=6]])
vim.cmd([[autocmd FileType cpp setlocal shiftwidth=6]])
