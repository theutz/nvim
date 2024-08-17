-- vim: fdm=indent fdl=1
local colors = {
  {
    "folke/tokyonight.nvim",
    enabled = true,
    lazy = false,
    priority = 1000,
    opts = {
      transparent = false,
      style = "moon",
      light_style = "night",
      styles = {
        sidebars = "dark",
        floats = "dark",
      },
    },
  },
}

local colorscheme = "tokyonight"

local plugins = {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = colorscheme,
    },
  },
}

for _, color in pairs(colors) do
  color.priority = 1000
  table.insert(plugins, color)
end

return plugins
