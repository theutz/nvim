-- To change the color scheme, change the value in ./lazyvim.lua
return {
  {
    "folke/tokyonight.nvim",
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
    config = true,
    opts = {
      transparent = true,
      dimInactive = false,
    },
  },
  {
    "sainnhe/everforest",
    lazy = false,
    priority = 1000,
    config = function()
      vim.o.background = "dark"
      vim.g.everforest_background = "soft"
      vim.g.everforest_transparent_background = 0 -- 0, 1, 2
    end,
  },
  {
    "navarasu/onedark.nvim",
    opts = {
      style = "darker",
    },
  },
  {
    "sainnhe/sonokai",
    config = function()
      vim.g.sonokai_style = "andromeda"
      vim.g.sonokai_better_performance = 1
    end,
  },
}
