-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "<C-j>", "<esc>o<esc>kO<esc>ji", { desc = "Make room" })
vim.keymap.set("n", "<leader>wv", "<cmd>vsp<cr>", { desc = "Split vertical" })
vim.keymap.set("n", "<leader>ws", "<cmd>sp<cr>", { desc = "Split horizontal" })
vim.keymap.set("n", "<leader>.", "<cmd>Telescope current_buffer_fuzzy_find<cr>", { desc = "Search curent buffer" })
