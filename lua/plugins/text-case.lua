return {
  {
    "johmsalas/text-case.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
    },
    lazy = false,
    config = function()
      require("textcase").setup()
      require("telescope").load_extension("textcase")
    end,
    keys = {
      { "ga.", "<cmd>TextCaseOpenTelescope<cr>", mode = { "n", "v" }, desc = "Telescope" },
    },
  },
}
