vim.cmd("let g:netrw_liststyle = 3")

  local opt = vim.opt

  -- General
  opt.encoding = "utf-8" -- Default string encoding
  opt.fileencoding = "utf-8" -- Write files as UTF-8
  opt.hidden = true -- Keep buffers in background
  opt.swapfile = false -- Disable swap files
  opt.backup = false -- Disable backup files
  opt.undofile = true -- Persist undo history
  opt.updatetime = 300 -- Faster CursorHold/autocomplete
  opt.timeoutlen = 500 -- Shorter mapped sequence wait
  opt.clipboard = "unnamedplus" -- Sync with system clipboard

  -- UI
  opt.number = true -- Show absolute line numbers
  opt.relativenumber = true -- Show relative line numbers
  opt.signcolumn = "yes" -- Keep sign column visible
  opt.cursorline = true -- Highlight the current line
  opt.termguicolors = true -- Enable 24-bit color
  opt.splitbelow = true -- New splits open below
  opt.splitright = true -- New splits open right
  opt.scrolloff = 8 -- Keep context lines above/below cursor
  opt.sidescrolloff = 8 -- Keep context columns left/right

  -- Search
  opt.ignorecase = true -- Case-insensitive search
  opt.smartcase = true -- Case-sensitive if uppercase
  opt.hlsearch = true -- Highlight matches
  opt.incsearch = true -- Show matches while typing

  -- Tabs & Indentation
  opt.expandtab = true -- Use spaces instead of tabs
  opt.shiftwidth = 2 -- Indent width
  opt.tabstop = 2 -- Tab width
  opt.smartindent = true -- Smarter auto-indenting

  -- Folding
  opt.foldmethod = "indent" -- Fold by indentation
  opt.foldenable = false -- Start with folds open
  opt.foldlevel = 99 -- Keep folds expanded by default

  -- Completion
  opt.completeopt = { "menu", "menuone", "noselect" } -- Better completion UI
  -- Performance
  opt.lazyredraw = true -- Reduce redraw during macros
  opt.synmaxcol = 120 -- Stop syntax highlight on long lines

  -- Text display
  opt.wrap = false -- Disable line wrap
  opt.linebreak = true -- Break long lines at words
  opt.list = true -- Show invisible characters
  opt.listchars = { tab = "» ", trail = "·", extends = "›", precedes =
  "‹" } -- Set list characters
