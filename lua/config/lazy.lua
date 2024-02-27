local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require("lazy").setup {
  spec = {
    -- add LazyVim and import its plugins
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    -- { "lazyvim.plugins.extras.coding.copilot" },
    { "lazyvim.plugins.extras.coding.yanky" },
    { "lazyvim.plugins.extras.dap.core" },
    { "lazyvim.plugins.extras.dap.nlua" },
    { "lazyvim.plugins.extras.editor.aerial" },
    { "lazyvim.plugins.extras.editor.navic" },
    { "lazyvim.plugins.extras.formatting.prettier" },
    { "lazyvim.plugins.extras.lang.docker" },
    { "lazyvim.plugins.extras.lang.go" },
    { "lazyvim.plugins.extras.lang.json" },
    { "lazyvim.plugins.extras.lang.markdown" },
    { "lazyvim.plugins.extras.lang.python" },
    { "lazyvim.plugins.extras.lang.ruby" },
    { "lazyvim.plugins.extras.lang.rust" },
    { "lazyvim.plugins.extras.lang.terraform" },
    { "lazyvim.plugins.extras.lang.typescript" },
    { "lazyvim.plugins.extras.lang.yaml" },
    { "lazyvim.plugins.extras.linting.eslint" },
    { "lazyvim.plugins.extras.lsp.none-ls" },
    { "lazyvim.plugins.extras.test.neotest" },
    { "lazyvim.plugins.extras.ui.alpha" },
    { "lazyvim.plugins.extras.util.project" },
    -- import/override with your plugins
    { import = "plugins" },
  },
  defaults = {
    -- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.
    -- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
    lazy = false,
    -- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
    -- have outdated releases, which may break your Neovim install.
    version = false, -- always use the latest git commit
    -- version = "*", -- try installing the latest stable version for plugins that support semver
  },
  install = { colorscheme = { "tokyonight", "habamax" } },
  checker = { enabled = true }, -- automatically check for plugin updates
  performance = {
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        "gzip",
        -- "matchit",
        -- "matchparen",
        "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
}
