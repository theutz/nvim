-- To change the color scheme, change the value in ./lazyvim.lua
return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "everforest",
    },
  },
  {
    "folke/tokyonight.nvim",
    enabled = false,
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  {
    "rebelot/kanagawa.nvim",
    enabled = false,
    config = true,
    opts = {
      style = "moon",
      transparent = true,
      dimInactive = false,
    },
  },
  {
    "sainnhe/everforest",
    enabled = true,
    lazy = false,
    priority = 1000,
    config = function()
      vim.o.background = "dark"
      vim.g.everforest_background = "soft"
      vim.g.everforest_transparent_background = 2 -- 0, 1, 2
    end,
  },
  {
    "navarasu/onedark.nvim",
    enabled = false,
    opts = {
      style = "darker",
    },
  },
  {
    "sainnhe/sonokai",
    enabled = false,
    config = function()
      vim.g.sonokai_style = "andromeda"
      vim.g.sonokai_better_performance = 1
    end,
  },
  {
    "dasupradyumna/midnight.nvim",
    enabled = false,
    lazy = false,
    priority = 1000,
  },
  {
    "ray-x/starry.nvim",
    enabled = false,
    lazy = false,
    priority = 1000,
    config = function(_, opts)
      local s = require("starry")
      s.setup(opts)
      vim.g.starry_disable_background = true
      require("starry.functions").change_style("moonlight")
    end,
  },
}
