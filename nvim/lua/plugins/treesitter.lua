return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			-- enable syntax highlighting
			highlight = {
				enable = true,
			},
			-- enable indentation
			indent = {
				enable = true
			},
			-- ensure these language parsers are installed
			ensure_installed = {
				"java",
				"lua",
				"markdown",
				"markdown_inline",
			},
		})
	end
}
