-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup
local expand = vim.fn.expand

autocmd({ "BufWritePost" }, {
  pattern = {
    expand("~") .. "/.tmux.conf",
    expand("~") .. "/.config/tmux/tmux.conf",
  },
  desc = "source tmux config files after writing",
  group = augroup("tmuxsource", { clear = true }),
  command = [[! tmux source-file "%"]],
})

autocmd({ "BufWritePost" }, {
  pattern = {
    expand("~") .. "/.local/share/chezmoi/*",
  },
  desc = "apply chezmoi changes on save",
  group = augroup("chezmoi", { clear = true }),
  command = [[! chezmoi apply --source-path "%"]],
})

autocmd({ "BufNewFile", "BufRead" }, {
  pattern = {
    "*.zsh",
    expand("~") .. "/.z{log{in,out},zsh{rc,env},pr{ofile,eztorc},aliases}",
    expand("~") .. "/.zprezto/runcoms/*",
    expand("~") .. "/.zprezto/*/functions/*",
  },
  desc = "set filetype for zsh files",
  group = augroup("zshfiles", { clear = true }),
  callback = function()
    if vim.bo.filetype == "markdown" then
      return
    end

    if vim.bo.filetype == "oil" then
      return
    end

    vim.bo.filetype = "zsh"
  end,
})

autocmd({ "BufNewFile", "BufRead" }, {
  pattern = {
    "*.antlers.html",
  },
  desc = "set filetype for antlers templates",
  group = augroup("antlers", { clear = true }),
  -- command = [[set filetype=antlers.html]],
  callback = function()
    vim.bo.filetype = "antlers.html"
  end,
})

vim.treesitter.language.register("bash", "zsh")

autocmd({ "BufEnter" }, {
  pattern = "*.css",
  desc = "remove dash from iskeyword",
  group = augroup("css-text-objects", { clear = true }),
  callback = function()
    vim.opt_local.iskeyword:remove("-")
  end,
})

autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.tfvars",
  desc = "set filetype for terraform variables files",
  group = augroup("terraform_vars", { clear = true }),
  callback = function()
    vim.bo.filetype = "terraform"
  end,
})
