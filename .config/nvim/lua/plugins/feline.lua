return {
    "freddiehaddad/feline.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    opts = {},
    config = function(_, opts)
        require("feline").setup()
        -- require("feline").winbar.setup()
        -- require("feline").statuscolumn.setup()
    end,
}
