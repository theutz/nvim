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

vim.cmd([[
augroup zsh
  au!
  autocmd BufNewFile,BufRead *.zsh,.zshrc,.zshenv,.zprofile,.zsh_aliases,.zlogin,.zlogout,.zpreztorc,*/.zprezto/*/functions/* set filetype=zsh
augroup end
]])
