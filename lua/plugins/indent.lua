return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = {},
  config = function()
    -- Brighter colors
    -- local hooks = require("ibl.hooks")
    -- local highlight = {
    --   "RainbowRed",
    --   "RainbowYellow",
    --   "RainbowBlue",
    --   "RainbowOrange",
    --   "RainbowGreen",
    --   "RainbowViolet",
    --   "RainbowCyan",
    -- }
    -- hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    --   -- These colors are from the Dracula palette, selected to fit a "soft" theme.
    --   vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#FF5555" })    -- Red
    --   vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#F1FA8C" }) -- Yellow
    --   vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#BD93F9" })   -- Purple
    --   vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#FFB86C" }) -- Orange
    --   vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#50FA7B" })  -- Green
    --   vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#FF79C6" }) -- Pink
    --   vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#8BE9FD" })   -- Cyan
    -- end)
    --
    -- require("ibl").setup({
    --   indent = { highlight = highlight }
    -- })
    require("ibl").setup({})
  end
}
