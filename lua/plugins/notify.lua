return {
	"rcarriga/nvim-notify",
	config = function()
		require("notify").setup({
			timeout = 10000,
			stages = "slide",
			background_colour = "#303446", -- Frappe base color
		})
	end,
}
