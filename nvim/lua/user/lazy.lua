-- Ensure lazy.nvim is installed if not already present
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Load the plugins from your custom user plugin file
require("lazy").setup("user.plugins", {
  checker = {
    enabled = true,
    notify = false,  -- Disable notifications for updates
  },
  change_detection = {
    notify = false,  -- Disable change detection notifications
  },
})
