return {
    "willothy/nvim-cokeline",
    config = function()
        require("cokeline").setup({
            show_if_buffers_are_at_least = 2,
            sidebar = {
                filetype = "NvimTree",
                components = {
                    {
                        text = function(buf)
                            return buf.filetype
                        end,
                        fg = yellow,
                        bg = bg,
                        bold = true,
                    },
                },
            },
        })
    end,
}
