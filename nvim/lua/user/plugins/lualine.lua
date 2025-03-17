return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("lualine").setup({
      options = {
        theme = {
          normal = {
            a = { bg = "#d79921", fg = "#1d2021", gui = "bold" },  -- Yellow block
            b = { bg = "#3c3836", fg = "#ebdbb2" },                 -- Dark gray
            c = { bg = "#1d2021", fg = "#a89984" }                  -- Background color
          },
          insert = { a = { bg = "#458588", fg = "#1d2021", gui = "bold" } },  -- Blue block
          visual = { a = { bg = "#b16286", fg = "#1d2021", gui = "bold" } },  -- Purple block
          replace = { a = { bg = "#cc241d", fg = "#1d2021", gui = "bold" } }, -- Red block
        },
        component_separators = "|",
        section_separators = { left = "", right = "" },
        icons_enabled = true,
        globalstatus = true,
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "filename" },
        lualine_c = {},
        lualine_x = { "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
    })
  end,
}
