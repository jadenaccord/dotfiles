vim.pack.add({ 'https://github.com/nvim-treesitter/nvim-treesitter' })

require('nvim-treesitter.configs').setup({
    highlight = { enable = true },
    indent = { enable = true },
    auto_install = true,
    ensure_installed = { 'markdown', 'markdown_inline', 'lua', 'go', 'html', 'css', 'javascript' },
})

