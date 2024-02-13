return {
  {
    "gsuuon/model.nvim",
    dependencies = {
      "folke/which-key.nvim",
    },
    config = function()
      require("which-key").register({
        { ["<leader>a"] = { name = "ai" } },
      })
    end,
    event = "VeryLazy",
    cmd = { "M", "Model", "Mchat" },
    init = function()
      vim.filetype.add({
        extension = {
          mchat = "mchat",
        },
      })
    end,
    ft = "mchat",
    keys = {
      { "<leader>ad", "<cmd>Mdelete<cr>", mode = "n" },
      { "<leader>as", "<cmd>Mselect<cr>", mode = "n" },
      { "<leader>a<space>", "<cmd>Mchat<cr>", mode = "n" },
    },
  },
}
