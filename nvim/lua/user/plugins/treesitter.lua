return {
  "nvim-treesitter/nvim-treesitter",
  branch = 'master',
  lazy = false,
  build = ":TSUpdate",

  config = function()
  require('nvim-treesitter.configs').setup({
    ensure_installed = {
      "lua",
      "html", "css", "javascript",
      "hyprlang", "markdown", "markdown_inline",
      "java", "rust", "c", "cpp",
      "json", "json5", "rasi", "toml", "yaml", "bash",
    },
    highlight = {
      enable = true,
    },
  })
end,
}
