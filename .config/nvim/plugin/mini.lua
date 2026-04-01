vim.pack.add({ 'https://github.com/echasnovski/mini.nvim' })

require('mini.statusline').setup()
require('mini.tabline').setup()
require('mini.icons').setup()
require('mini.git').setup()
require('mini.diff').setup()
require('mini.pick').setup()
require('mini.files').setup()
require('mini.pairs').setup()
require('mini.clue').setup({
  triggers = {
    -- Leader triggers
    { mode = { 'n', 'x' }, keys = '<Leader>' },

    -- `[` and `]` keys
    { mode = 'n', keys = '[' },
    { mode = 'n', keys = ']' },

    -- Built-in completion
    { mode = 'i', keys = '<C-x>' },

    -- `g` key
    { mode = { 'n', 'x' }, keys = 'g' },

    -- Marks
    { mode = { 'n', 'x' }, keys = "'" },
    { mode = { 'n', 'x' }, keys = '`' },

    -- Registers
    { mode = { 'n', 'x' }, keys = '"' },
    { mode = { 'i', 'c' }, keys = '<C-r>' },

    -- Window commands
    { mode = 'n', keys = '<C-w>' },

    -- `z` key
    { mode = { 'n', 'x' }, keys = 'z' },
  },
  clues = {
    -- Enhance this by adding descriptions for <Leader> mapping groups
  },
  window = {
    delay = 300,
  }
})
require('mini.clue').config.clues = {
    MiniClue.gen_clues.square_brackets(),
    MiniClue.gen_clues.builtin_completion(),
    MiniClue.gen_clues.windows(),
    MiniClue.gen_clues.g(),
    MiniClue.gen_clues.marks(),
    MiniClue.gen_clues.registers(),
    MiniClue.gen_clues.z(),
}

-- Keymaps
local map = vim.keymap.set
map('n', '<Leader>ff', MiniPick.builtin.files, { desc = 'Pick files' })
map('n', '<Leader>fg', MiniPick.builtin.grep_live, { desc = 'Pick grep' })
map('n', '<Leader>fb', MiniPick.builtin.buffers, { desc = 'Pick buffers' })
map('n', '<Leader>e', MiniFiles.open, { desc = 'File explorer' })

-- Highlights
local hl = vim.api.nvim_set_hl
hl(0, 'MiniStatuslineModeNormal', { ctermfg = 4, ctermbg = 0, cterm = { bold = true }})
hl(0, 'MiniStatuslineModeInsert', { ctermfg = 2, ctermbg = 0 })
hl(0, 'MiniStatuslineModeVisual', { ctermfg = 3, ctermbg = 0 })
hl(0, 'MiniStatuslineModeCommand', { ctermfg = 5, ctermbg = 0 })
hl(0, 'MiniStatuslineDevinfo', { ctermfg = 7, ctermbg = 0 })
hl(0, 'MiniStatuslineFilename', { ctermfg = 0, ctermbg = 7 })
hl(0, 'MiniStatuslineFileinfo', { ctermfg = 7, ctermbg = 0 })
hl(0, 'MiniStatuslineInactive', { ctermfg = 8, ctermbg = 0 })
hl(0, 'MiniTablineCurrent', { ctermfg = 15, ctermbg = 0 })
hl(0, 'MiniTablineVisible', { ctermfg = 7, ctermbg = 0 })
hl(0, 'MiniTablineHidden', { ctermfg = 8, ctermbg = 0 })
-- hl(0, 'MiniTablineModifiedCurrent', { ctermfg = 1, ctermbg = 0 })

