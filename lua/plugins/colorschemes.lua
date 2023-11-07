-- To change the color scheme, change the value in ./lazyvim.lua
return {

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
}
