local map = vim.keymap.set

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

-- Quick open configs
map('n', '<Leader>cv', ':e $HOME/.config/nvim/<CR>', { desc = 'Open nvim config' })
map('n', '<Leader>cz', ':e $ZSHRC<CR>', { desc = 'Open .zshrc' })
map('n', '<Leader>cg', ':e $HOME/.config/ghostty/config<CR>', { desc = 'Open Ghostty config' })

-- Visual <j> and <k>
vim.keymap.set({'n', 'x'}, 'j', 'gj', { noremap = true, silent = true })
vim.keymap.set({'n', 'x'}, 'k', 'gk', { noremap = true, silent = true })
vim.keymap.set({'n', 'x'}, 'gj', 'j', { noremap = true, silent = true })
vim.keymap.set({'n', 'x'}, 'gk', 'k', { noremap = true, silent = true })

----------------------------------------------------------------------
-- Note: plugin-specific keymaps are specified in the corresponding lua files.

