return {
  "rawnly/gist.nvim",
  cmd = { "GistCreate", "GistCreateFromFile", "GistsList" },
  init = function()
    require("which-key").register {
      ["<leader>gi"] = { name = "gists" },
    }
  end,
  config = true,
  keys = {
    { "<leader>gic", "<Cmd>GistCreate<cr>", desc = "Create gist" },
    { "<leader>gif", "<Cmd>GistCreateFromFile<cr>", desc = "Create gist from file" },
    { "<leader>gil", "<Cmd>GistsList<cr>", desc = "List gists" },
  },
}
