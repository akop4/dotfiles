return({
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
        options = {
            icons_enabled = true,
            theme = color_my_pencils,
            component_separators = "|",
            section_separators = "",
        },
    },
})
