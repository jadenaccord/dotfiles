vim.pack.add({ 'https://github.com/echasnovski/mini.nvim' })

-- Modules
require('mini.statusline').setup()  -- status bar
require('mini.tabline').setup()     -- tab
require('mini.icons').setup()       -- icons
require('mini.git').setup()         -- git integration (e.g. in number column)
require('mini.diff').setup()        -- diffs
require('mini.pairs').setup()       -- auto pair brackets etc.

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
hl(0, 'MiniTablineCurrent', { ctermfg = 15, ctermbg = 4 })
hl(0, 'MiniTablineModifiedCurrent', { ctermfg = 9, ctermbg = 4 })
hl(0, 'MiniTablineVisible', { ctermfg = 0, ctermbg = 15 })
hl(0, 'MiniTablineModifiedVisible', { ctermfg = 9, ctermbg = 15 })
hl(0, 'MiniTablineHidden', { ctermfg = 7, ctermbg = 15 })
hl(0, 'MiniTablineModifiedHidden', { ctermfg = 1, ctermbg = 15 })
hl(0, 'Pmenu', { ctermfg = 0, ctermbg = 8 })
hl(0, 'PmenuSel', { ctermfg = 0, ctermbg = 15 })
hl(0, 'PmenuSbar', { ctermbg = 8 })
hl(0, 'PmenuThumb', { ctermbg = 7 })

