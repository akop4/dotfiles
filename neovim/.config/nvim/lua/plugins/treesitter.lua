return({
    "nvim-treesitter/nvim-treesitter",
    build = ':TSUpdate',
    dependencies = {
        'nvim-treesitter/nvim-treesitter-textobjects',
    },
    config = function()
        require("nvim-treesitter.configs").setup({
            -- Auto install list of parsers
            ensure_installed = { 
                "c",
                "lua",
                "vim",
                "vimdoc",
                "query",
                "python",
                "bash",
            },
            -- Use treesitter for better highliting
            highlight = {
                enable = true,
            },
        })
    end,
})
