return {
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false, -- Ensures the colorscheme is loaded immediately
    priority = 1000, -- Load it before other plugins to apply colors early
    config = function()
      require("gruvbox").setup({
        contrast = "medium", -- Options: "hard", "soft", "medium"
        palette_overrides = {},
        overrides = {},
        transparent_mode = false,
      })
      vim.cmd("colorscheme gruvbox")
    end,
  },
}

