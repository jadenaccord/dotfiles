vim.lsp.enable('marksman')
vim.lsp.enable('tinymist')
vim.lsp.enable('gopls')
vim.lsp.enable('html')
vim.lsp.enable('cssls')
vim.lsp.enable('ts_ls')

vim.pack.add({ 'https://github.com/echasnovski/mini.nvim' })
require('mini.completion').setup()
-- require('mini.snippets').setup()

