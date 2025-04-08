return {
	cmd = { "lua-language-server" },
	filetypes = { "lua" },
	settings = {
		Lua = {
      			runtime = { version = 'LuaJIT', }, -- For Neovim use LuaJIT
      			diagnostics = { globals = { "vim", "require" } }, -- Recognize 'vim' global for Neovim config files
			telemetry = { enable = false, },
      			},
	}
}
