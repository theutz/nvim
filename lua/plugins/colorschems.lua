-- vim: fdm=indent fdl=1
return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "nightfox",
    },
  },
  {
    "ribru17/bamboo.nvim",
    enabled = true,
    priority = 1000,
    opts = {
      style = "multiplex",
      transparent = true,
      dim_inactive = true,
      lualine = {
        transparent = true,
      },
    },
  },
  {
    "RRethy/base16-nvim",
    enabled = true,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    enabled = true,
    opts = {
      background = {
        light = "latte",
        dark = "mocha",
      },
    },
  },
  {
    "scottmckendry/cyberdream.nvim",
    priority = 1000,
    enabled = true,
    opts = {
      transparent = false,
      italic_comments = true,
      hide_fillchars = true,
      borderless_telescope = true,
    },
  },
  {
    "sainnhe/everforest",
    enabled = true,
    priority = 1000,
    config = function()
      vim.g.everforest_background = "hard"
      vim.g.everforest_transparent_background = 0 -- 0, 1, 2
    end,
  },
  {
    "rebelot/kanagawa.nvim",
    enabled = true,
    config = true,
    opts = {
      style = "moon",
      transparent = true,
      dimInactive = false,
    },
  },
  {
    "dasupradyumna/midnight.nvim",
    enabled = true,
    priority = 1000,
  },
  {
    "miikanissi/modus-themes.nvim",
    priority = 1000,
    enabled = true,
  },
  {
    "olimorris/onedarkpro.nvim",
    enabled = true,
    priority = 1000,
    opts = {
      options = {
        cursorline = false,
        transparency = true,
        lualine_transparency = true,
      },
    },
  },
  {
    "nyoom-engineering/oxocarbon.nvim",
    enabled = true,
    priority = 1000,
  },
  {
    "sainnhe/sonokai",
    enabled = true,
    config = function()
      vim.g.sonokai_style = "default" -- default, shusia, andromeda, atlantis, maia, espresso
      vim.g.sonokai_better_performance = 1
    end,
  },
  {
    "ray-x/starry.nvim",
    enabled = true,
    priority = 1000,
    config = function(_, opts)
      local s = require "starry"
      s.setup(opts)
      vim.g.starry_disable_background = true
    end,
  },
  {
    "projekt0n/github-nvim-theme",
    enabled = true,
    priority = 1000,
  },
  {
    "folke/tokyonight.nvim",
    enabled = true,
    priority = 1000,
    opts = {
      transparent = true,
      style = "moon",
      light_style = "night",
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  {
    "EdenEast/nightfox.nvim",
    priority = 1000,
    opts = {
      style = "dawnfox",
      transparent = true,
    },
  },
}
