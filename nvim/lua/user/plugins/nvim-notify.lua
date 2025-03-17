return {
  {
    "rcarriga/nvim-notify",
    lazy = false, -- Load immediately (optional, but useful for notifications)
    config = function()
      local notify = require("notify")

      -- Setup nvim-notify
      notify.setup({
        stages = "fade_in_slide_out", -- Animation style
        timeout = 3000, -- Time (ms) before notifications disappear
        background_colour = "#000000", -- Prevent transparency issues
        render = "default", -- Notification rendering style
        max_width = 50,
        max_height = 10,
      })

      -- Make nvim-notify the default notification handler
      vim.notify = notify
    end,
  },
}
