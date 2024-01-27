-- Setup leader keys before plugins
vim.g.mapleader = " "
vim.g.maplocalleader = " " 
-- Setup line numbers
vim.opt.number = true
vim.opt.relativenumber = true
-- Setup windows split behavior
vim.opt.splitbelow = true
vim.opt.splitright = true
-- Don't touch long strings
vim.opt.wrap = false
-- Setup Tab behavior
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
-- Activate system clipboard
vim.opt.clipboard = "unnamedplus"
vim.opt.scrolloff = 10
vim.opt.virtualedit = "block"
vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.termguicolors = true
-- Declare defaul colorscheme name
color_my_pencils = "tokyonight"
