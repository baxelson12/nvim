return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = { "BufReadPost", "BufNewFile" }, -- loads when you open a file
	opts = {
		ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "javascript", "typescript", "html", "css" },
		auto_install = true,
		sync_install = false,
		highlight = { enable = true },
		indent = { enable = true },
		ignore_install = {},
		modules = {},
	},
}
