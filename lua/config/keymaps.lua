-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.g.mapleader = " "

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local keymap = vim.keymap
local opt = {
  noremap = true,
  silent = true,
}

---------insert mode---------
keymap.set("i", "jk", "<ESC>", opt)

---------visual mode---------
keymap.set("v", "K", ":m '<-2<CR>gv=gv", opt)
keymap.set("v", "J", ":m '>+1<CR>gv=gv", opt)
keymap.set("v", "<", "<gv", opt)
keymap.set("v", ">", ">gv", opt)

---------normal mode---------
--split window--
keymap.set("n", "<leader>sv", "<C-w>v", opt)
keymap.set("n", "<leader>sh", "<C-w>s", opt)
--no highlight--
keymap.set("n", "<leader>nh", ":nohl<CR>", opt)
--nvim-tree--
keymap.set("n", "<leader>e", ":Neotree<CR>", opt)
--buffer line--
keymap.set("n", "<leader>bc", ":bdelete<CR>", opt)
--quit--
keymap.set("n", "<leader>qq", ":q!<CR>", opt)
keymap.set("n", "<leader>wq", ":wq!<CR>", opt)
keymap.set("n", "<leader>w", ":w<CR>", opt)
--toggleterm--
--treesitter--
--LuaSnip--
