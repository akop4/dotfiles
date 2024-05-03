return({
    { 
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        tag = "stable",
        name = "tokyonight",
        opts = { style = "night" },
        config = function()
            -- Set up colorscheme in neovim after installing and setup theme
            vim.cmd.colorscheme(color_my_pencils)
        end,
    },

    { "rose-pine/neovim", name = "rose-pine" },

    { "numToStr/Comment.nvim", opts = {} },

})
