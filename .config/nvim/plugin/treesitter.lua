vim.pack.add({
    { src = 'https://github.com/nvim-treesitter/nvim-treesitter', version = 'main' },
})

require('nvim-treesitter.configs').setup {
    ensure_installed = { 'html', 'css', 'javascript', 'typescript', 'markdown', 'markdown_inline', 'lua', 'c', 'go', 'vim', 'vimdoc' },
    sync_install = false,
    auto_install = true,
    ignore_install = {},
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}

