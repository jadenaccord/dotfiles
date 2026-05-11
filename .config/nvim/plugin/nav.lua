vim.pack.add({ 'https://github.com/echasnovski/mini.nvim' })

-- Modules
require('mini.files').setup()   -- file explorer
require('mini.pick').setup()    -- various pickers (files, buffers, etc.)
require('mini.extra').setup()   -- extra pickers

-- Keymaps
local map = vim.keymap.set
map('n', '<Leader>ff', MiniPick.builtin.files, { desc = 'Find files' })
map('n', '<Leader>fg', MiniPick.builtin.grep_live, { desc = 'Find grep' })
map('n', '<Leader>fb', MiniPick.builtin.buffers, { desc = 'Find buffers' })
map('n', '<Leader>fr', function()
    MiniExtra.pickers.lsp({ scope = 'references' })
end, { desc = 'Find references (cursor)' })
map('n', '<leader>fl', function()
  local stem = vim.fn.expand('%:t:r')
  MiniPick.builtin.grep({ pattern = [[\[\[]] .. stem .. [[(\]\]|#|\|)]] })
end, { desc = 'Find backlinks (file)' })
map('n', '<Leader>e', MiniFiles.open, { desc = 'File explorer' })
