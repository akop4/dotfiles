return({
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "folke/neodev.nvim",
    },

    config = function()
        require("mason").setup({
            ui = {
                border = "rounded",
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            }
        })
        require("mason-lspconfig").setup(
        {
            ensure_installed = {
                "lua_ls",
                "pyright",
                "tsserver",
            },
        })
        require("neodev").setup({})
        require("lspconfig").lua_ls.setup({})
        require("lspconfig").pyright.setup({})
        require("lspconfig").tsserver.setup({})
    end,
})
