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

-- Put path to lazy.nvim in run time path
vim.opt.rtp:prepend(lazypath)

-- Declare options for lazy
local function lazy_options()
    return ({
        lockfile = vim.fn.stdpath("config") .. "/lua/lazy_bootstrap/lazy_lock.json",

        install = {
            -- try to load one of these colorschemes when starting an installation during startup
            colorscheme = { 
                -- color_my_pencils, 
                "habamax", 
            },
        },

        performance = {
            rtp = {
                disabled_plugins = {
                    -- "gzip",
                    -- "matchit",
                    -- "matchparen",
                    -- "netrwPlugin",
                    -- "tarPlugin",
                    -- "tohtml",
                    "tutor",
                    -- "zipPlugin",
                },
            },
        },
    })
end

-- Start lazy
require("lazy").setup(
    "plugins",
    lazy_opts
)
