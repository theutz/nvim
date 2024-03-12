-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "<C-j>", "<esc>o<esc>kO<esc>ji", { desc = "Make room" })
vim.keymap.set("n", "<leader>.", "<cmd>Telescope current_buffer_fuzzy_find<cr>", { desc = "Search curent buffer" })
vim.keymap.set("n", "<leader>ap", "<cmd>Copilot panel<cr>", { desc = "Copilot Panel" })
vim.keymap.set("n", "<leader>ck", "<Cmd>LspRestart<cr>", { desc = "Restart LSP" })
vim.keymap.set("n", "<leader>fs", "<cmd>w<cr>", { desc = "Save file" })
vim.keymap.set("n", "<leader>fS", "<cmd>wa<cr>", { desc = "Save all files" })
vim.keymap.set("n", "<leader>w_", "<Cmd>wincmd _<cr>", { desc = "Max out the height" })
vim.keymap.set("n", "<leader>wo", "<Cmd>wincmd o<cr>", { desc = "Close Other Windows" })
vim.keymap.set("n", "<leader>ws", "<cmd>sp<cr>", { desc = "Split horizontal" })
vim.keymap.set("n", "<leader>wv", "<cmd>vsp<cr>", { desc = "Split vertical" })
vim.keymap.set("t", "<S-space>", "<Space>")
