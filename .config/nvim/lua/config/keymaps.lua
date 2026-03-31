local map = vim.api.nvim_set_keymap

-- Map leader keys
vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

-- Saving, quitting, etc.
map('n', '<Leader>w', ':w<CR>', { desc = 'Save file', nowait = true })
map('n', '<Leader>rr', ':restart<CR>', { desc = 'Restart config' })
map('n', '<Leader>qa', ':qa<CR>', { desc = 'Quit all' })

-- Switch between buffers
map('n', '<Tab>', ':bnext<CR>', { silent = true, desc = 'Next buffer' })
map('n', '<S-Tab>', ':bprev<CR>', { silent = true, desc = 'Previous buffer' })


----------------------------------------------------------------------
-- Note: plugin-specific keymaps are specified in the corresponding lua files.

