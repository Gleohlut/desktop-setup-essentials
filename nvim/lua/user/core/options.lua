-- Tree style file explorer
vim.cmd("let g:netrw_liststyle = 3")

-- Line numbers
vim.opt.number = true -- line numbers
vim.opt.relativenumber = true -- relative line numbers

-- Tabs and indentation
vim.opt.tabstop = 2 -- 2 spaces for tabs
vim.opt.shiftwidth = 2 -- 2 spaces for indent width
vim.opt.expandtab = true -- expand tab to spaces
vim.opt.autoindent = true -- copy indent from current line when starting new one

-- Line wrapping
vim.opt.wrap = false -- disable line wrapping

-- Search settings
vim.opt.ignorecase = true -- ignore case when searching
vim.opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- Cursor line
vim.opt.cursorline = true -- highlight current cursor line

-- Appearance
--
-- Turn on termguicolors
vim.opt.termguicolors = true
vim.opt.background = "dark" -- colorschemes that can be light or dark will be made dark
vim.opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- Backspace
vim.opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- Clipboard
vim.opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- Split windows
vim.opt.splitright = true -- split vertical window to the right
vim.opt.splitbelow = true -- split horizontal window to the bottom

-- Turn off swapfile
vim.opt.swapfile = false
