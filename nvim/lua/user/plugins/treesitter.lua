return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",

    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { 
          "yaml",
          "css",
          "javascript",
          "html",
          "json",
          "lua",
          "rust",
          "python",
          "markdown",
          "markdown_inline",
          "dockerfile",
          "c",
          "regex",
          "bash" },

          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
        })
    end
 }
