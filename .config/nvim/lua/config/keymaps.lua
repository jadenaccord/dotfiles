-- Map leader keys
vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

-- Leader keymaps
vim.api.nvim_set_keymap('n', '<Leader>w', ':w<CR>', { noremap = true, silent = false }) -- save file with <space + w>
vim.api.nvim_set_keymap('n', '<Leader>l', ':Lazy<CR>', { noremap = true, silent = true}) -- open lazy.nvim
vim.api.nvim_set_keymap('n', '<Leader>m', ':Mason<CR>', { noremap = true, silent = true}) -- open mason.nvim
vim.api.nvim_set_keymap('n', '<Leader>ff', ':Telescope find_files<CR>', { noremap = true, silent = true}) -- Telescope find_files
vim.api.nvim_set_keymap('n', '<Leader>fg', ':Telescope live_grep<CR>', { noremap = true, silent = true}) -- Telescope live_grep
vim.api.nvim_set_keymap('n', '<Leader>fb', ':Telescope buffers<CR>', { noremap = true, silent = true}) -- Telescope buffers
vim.api.nvim_set_keymap('n', '<Leader>fh', ':Telescope help_tags<CR>', { noremap = true, silent = true}) -- Telescope help_tags
vim.api.nvim_set_keymap('n', '<Leader>t', ':NvimTreeToggle<CR>', { noremap = true, silent = true}) -- toggle nvim-tree

-- Switch between buffers
vim.api.nvim_set_keymap('n', '<Tab>', ':bnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-Tab>', ':bprev<CR>', { noremap = true, silent = true })

