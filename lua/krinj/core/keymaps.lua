-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

keymap.set("v", "<C-r>", '"hy:%s/<C-r>h//gc<left><left><left>', { noremap = true, silent = true })

keymap.set("n", "<C-h>", "<C-w>w", { noremap = true, silent = true })
keymap.set("n", "<C-l>", "<C-w>w", { noremap = true, silent = true })

keymap.set("n", "<leader>j", "15j", { noremap = true, silent = true })
keymap.set("n", "<leader>k", "15k", { noremap = true, silent = true })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
