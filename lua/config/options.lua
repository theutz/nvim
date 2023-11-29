-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.o.foldcolumn = "2"

-- Stop annoying delyas with escape key
vim.o.timeoutlen = 1000
vim.o.ttimeoutlen = 0

if vim.g.neovide then
  vim.o.guifont = "MonaspiceRn Nerd Font:h12"

  local padding = 10
  vim.g.neovide_padding_top = padding / 2.5
  vim.g.neovide_padding_bottom = padding / 2.5
  vim.g.neovide_padding_left = padding
  vim.g.neovide_padding_right = padding

  local alpha = function()
    return string.format("%x", math.floor((255 * vim.g.transparency) or 0.8))
  end
  vim.g.neovide_transparency = 0.0
  vim.g.transparency = 0.8
  vim.g.neovide_background_color = "#0f1117" .. alpha()

  vim.g.neovide_input_macos_alt_is_meta = true

  vim.g.neovide_cursor_animation_length = 0.03
  vim.g.neovide_cursor_trail_size = 0.85

  vim.g.neovide_cursor_vfx_mode = "railgun"
end
