return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
      "marilari88/neotest-vitest",
      "nvim-neotest/neotest-vim-test",
      "theutz/neotest-pest",
    },
    opts = {
      adapters = {
        ["neotest-vitest"] = {},
        ["neotest-vim-test"] = {
          allow_file_types = {},
        },
        ["neotest-pest"] = {},
      },
    },
  },
}
