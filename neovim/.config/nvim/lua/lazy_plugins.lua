-- Download and install lazy.nvim if not exist directory
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

-- Put path to lazy in run time path
vim.opt.rtp:prepend(lazypath)

-- Declare plugins to install with lazy
require("lazy").setup({
    { 
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
        config = function()
            -- Set up colorscheme in neovim
            vim.cmd.colorscheme("tokyonight-night")
        end,
    },
    
    {
        "nvim-treesitter/nvim-treesitter",
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
    },
})

