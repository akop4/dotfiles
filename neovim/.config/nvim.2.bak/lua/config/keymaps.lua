local keymap = vim.keymap
local opts = { noremap = true, silent = true }
-- Directory navigation
keymap.set("n", "<leader>pv", vim.cmd.Lex, opts)


-- Navigation pane
keymap.set("n", "<C-h>", "<C-w>h", opts) -- Navigate left
keymap.set("n", "<C-j>", "<C-w>j", opts) -- Navigate down
keymap.set("n", "<C-k>", "<C-w>k", opts) -- Navigate up
keymap.set("n", "<C-l>", "<C-w>l", opts) -- Navigate right

-- Window management
keymap.set("n", "<leader>sv", vim.cmd.vsplit, opts) -- Split verticaly
keymap.set("n", "<leader>sh", vim.cmd.split, opts)  -- Split verticaly

-- Text navigation
--
-- Centred text when navigate throw file
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- Centred text when navigatr throw search results
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
-- Escape from insert mode
vim.keymap.set("i", "<C-c>", "<Esc>") 
