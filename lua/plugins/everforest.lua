return {
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
}
