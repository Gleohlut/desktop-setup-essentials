-- set leader key to space
vim.g.mapleader = " "
-- clear search highlights
vim.keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
