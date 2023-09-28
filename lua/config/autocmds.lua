-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  pattern = {
    vim.fn.expand("~") .. "/.tmux.conf",
    vim.fn.expand("~") .. "/.config/tmux/tmux.conf",
  },
  desc = "source tmux config files after writing",
  group = vim.api.nvim_create_augroup("tmuxsource", { clear = true }),
  command = [[! tmux source-file "%"]],
})

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  pattern = {
    vim.fn.expand("~") .. "/.local/share/chezmoi/*",
  },
  desc = "apply chezmoi changes on save",
  group = vim.api.nvim_create_augroup("chezmoi", { clear = true }),
  command = [[! chezmoi apply --source-path "%"]],
})

vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = {
    "*.zsh",
    vim.fn.expand("~") .. "/.z{log{in,out},zsh{rc,env},pr{ofile,eztorc},aliases}",
    vim.fn.expand("~") .. "/.zprezto/runcoms/*",
    vim.fn.expand("~") .. "/.zprezto/*/functions/*",
  },
  desc = "set filetype for zsh files",
  group = vim.api.nvim_create_augroup("zshfiles", { clear = true }),
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
