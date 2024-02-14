return {
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
