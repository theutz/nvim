return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "sonokai",
    },
    keys = {
      { "<c-_>", false, mode = { "n" } },
      { "<leader>ft", false },
      { "<leader>fT", false },
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      {
        "<leader>;",
        function()
          require("telescope.builtin").current_buffer_fuzzy_find()
        end,
        desc = "Search within current buffer",
      },
      {
        "<leader>;",
        function()
          require("telescope.builtin").live_grep({ grep_open_files = true })
        end,
        desc = "Search open buffers",
      },
      {
        "<leader>sc",
        "<cmd>Telescope commands<cr>",
        desc = "Commands",
      },
      {
        "<leader>sC",
        false,
      },
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    enabled = false,
    opts = {
      filesystem = {
        -- hijack_netrw_behavior = "disabled",
        filtered_items = {
          hide_dotfiles = false,
        },
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      indent = {
        enable = true,
        disable = { "yaml", "php" },
      },
    },
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      defaults = {
        ["<leader>go"] = {
          name = "octo",
          i = { name = "issues" },
          p = { name = "pr" },
          r = { name = "repo" },
          g = { name = "gist" },
        },
      },
    },
  },
  {
    "folke/flash.nvim",
    keys = {},
    opts = {
      modes = {
        search = {
          enabled = false,
        },
      },
    },
  },
}
