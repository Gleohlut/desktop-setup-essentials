return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate", -- Automatically run `:TSUpdate` to keep parsers up to date
    lazy = false, -- Load on startup
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { -- Add your preferred languages here
          "lua",
          "vim",
          "javascript",
          "typescript",
          "python",
          "html",
          "css",
          "bash",
        },
        highlight = {
          enable = true, -- Enable syntax highlighting
          additional_vim_regex_highlighting = false, -- Use only Treesitter for syntax
        },
        indent = {
          enable = true, -- Enable Treesitter-based indentation
        },
        incremental_selection = {
          enable = true, -- Enables incremental selection
          keymaps = {
            init_selection = "gnn", -- Initialize selection
            node_incremental = "grn", -- Increment selection
            scope_incremental = "grc", -- Increment scope
            node_decremental = "grm", -- Decrement selection
          },
        },
        autotag = {
          enable = true, -- Auto-close and rename HTML tags
        },
      })
    end,
  },
}

