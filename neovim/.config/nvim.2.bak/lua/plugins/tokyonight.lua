return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 777,
    config = function()
        vim.cmd("colorscheme tokyonight")
    end
}
