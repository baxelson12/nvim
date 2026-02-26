return {
	"nvim-mini/mini.notify",
	version = "*",
	config = function()
		require("mini.notify").setup()
		vim.notify = require("mini.notify").make_notify({
			ERROR = { duration = 5000 },
			WARN = { duration = 5000 },
			INFO = { duration = 5000 },
		})
	end,
}
