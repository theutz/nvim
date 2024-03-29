-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local set = vim.keymap.set
local del = vim.keymap.del

local function open_file(filepath) vim.cmd("edit " .. filepath) end

local function get_agenda_file(name)
  local base = "~/code/theutz/agenda/"
  local extension = ".md"
  local file_path = base .. name .. extension
  return file_path
end

local function open_agenda_file(name)
  return function() open_file(get_agenda_file(name)) end
end

set("i", "<C-j>", "<esc>o<esc>kO<esc>ji", { desc = "Make room" })
set("n", "<leader>.", "<cmd>Telescope current_buffer_fuzzy_find<cr>", { desc = "Search curent buffer" })
set("n", "<leader>ap", "<cmd>Copilot panel<cr>", { desc = "Copilot Panel" })
set("n", "<leader>ck", "<Cmd>LspRestart<cr>", { desc = "Restart LSP" })
set("n", "<leader>fs", "<cmd>w<cr>", { desc = "Save file" })
set("n", "<leader>fS", "<cmd>wa<cr>", { desc = "Save all files" })
set("n", "<leader>na", open_agenda_file "today", { desc = "Open agenda" })
set("n", "<leader>w_", "<Cmd>wincmd _<cr>", { desc = "Max out the height" })
set("n", "<leader>wo", "<Cmd>wincmd o<cr>", { desc = "Close Other Windows" })
set("n", "<leader>ws", "<cmd>sp<cr>", { desc = "Split horizontal" })
set("n", "<leader>wv", "<cmd>vsp<cr>", { desc = "Split vertical" })
set("t", "<S-space>", "<Space>")
