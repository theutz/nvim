-- vim: fdm=indent fdl=1
local colors = {
  {
    "folke/tokyonight.nvim",
    enabled = false,
    opts = {
      transparent = true,
      style = "moon",
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  {
    "scottmckendry/cyberdream.nvim",
    opts = {
      transparent = true,
      italic_comments = true,
    },
  },
}

local colorscheme = "cyberdream"

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
  color.lazy = false
  table.insert(plugins, color)
end

return plugins
