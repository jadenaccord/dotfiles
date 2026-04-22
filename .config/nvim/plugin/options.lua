-- UI
vim.o.number = true
vim.o.relativenumber = true
vim.o.linebreak = true
vim.o.cursorline = true
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.termguicolors = false
vim.o.scrolloff = 4
vim.o.sidescrolloff = 4
vim.o.signcolumn = "yes"
vim.o.showmatch = true
vim.o.cmdheight = 1
vim.o.showmode = false
vim.o.guifont = "JetBrainsMono Nerd Font:h14"

-- Tabs/indents
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.autoindent = true

-- Search
vim.o.incsearch = true
vim.o.hlsearch = false
vim.o.ignorecase = true
vim.o.smartcase = true

-- Files
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false
vim.o.undofile = true
vim.o.undolevels = 10000
vim.o.undodir = vim.fn.expand("~/.vim/undodir")
vim.o.autoread = true

-- Other
vim.o.clipboard = 'unnamedplus'
vim.o.mouse = 'a'
vim.o.updatetime = 300
-- vim.o.timeoutlen = 500
-- vim.o.autocomplete = true
vim.o.completeopt = {'menu', 'menuone', 'noselect', 'fuzzy'}

