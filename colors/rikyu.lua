-- rikyu.lua · after Sanzo Wada, A Dictionary of Color Combinations Vol.1
-- olive & moss greens, sienna warmth, one dusty blue. No true white or black.
-- Dark only. Install: copy to ~/.config/nvim/colors/rikyu.lua · :colorscheme rikyu

local p = {
  bg = "#282720", bg1 = "#312F26", bg2 = "#3E3C30",
  fg = "#D9D5BD", muted = "#82806A",
  kw = "#DB8D63", str = "#ACB474", fn = "#92A7BB", const = "#D2B276",
  err = "#D5715A", warn = "#C69A48", plum = "#B08A9E", teal = "#8FB0A0",
}

vim.cmd.highlight("clear")
if vim.fn.exists("syntax_on") == 1 then vim.cmd.syntax("reset") end
vim.g.colors_name = "rikyu"
vim.o.background = "dark"
vim.o.termguicolors = true

local function h(g, o) vim.api.nvim_set_hl(0, g, o) end

-- ui
h("Normal", { fg = p.fg, bg = p.bg })
h("NormalFloat", { fg = p.fg, bg = p.bg1 })
h("FloatBorder", { fg = p.bg2, bg = p.bg1 })
h("CursorLine", { bg = p.bg1 })
h("CursorLineNr", { fg = p.kw, bold = true })
h("LineNr", { fg = p.muted })
h("SignColumn", { bg = p.bg })
h("ColorColumn", { bg = p.bg1 })
h("Visual", { bg = p.bg2 })
h("Search", { fg = p.bg, bg = p.warn })
h("IncSearch", { fg = p.bg, bg = p.kw })
h("CurSearch", { link = "IncSearch" })
h("MatchParen", { fg = p.kw, bold = true })
h("Pmenu", { fg = p.fg, bg = p.bg1 })
h("PmenuSel", { fg = p.bg, bg = p.teal })
h("PmenuSbar", { bg = p.bg1 })
h("PmenuThumb", { bg = p.bg2 })
h("StatusLine", { fg = p.fg, bg = p.bg2 })
h("StatusLineNC", { fg = p.muted, bg = p.bg1 })
h("WinSeparator", { fg = p.bg2 })
h("TabLine", { fg = p.muted, bg = p.bg1 })
h("TabLineSel", { fg = p.fg, bg = p.bg })
h("TabLineFill", { bg = p.bg1 })
h("NonText", { fg = p.bg2 })
h("Whitespace", { fg = p.bg2 })
h("Folded", { fg = p.muted, bg = p.bg1 })
h("Directory", { fg = p.fn })
h("Title", { fg = p.kw, bold = true })
h("ErrorMsg", { fg = p.err })
h("WarningMsg", { fg = p.warn })
h("MoreMsg", { fg = p.str })
h("Question", { fg = p.teal })

-- syntax
h("Comment", { fg = p.muted, italic = true })
h("String", { fg = p.str })
h("Character", { fg = p.str })
h("Number", { fg = p.const })
h("Float", { fg = p.const })
h("Boolean", { fg = p.const })
h("Constant", { fg = p.const })
h("Identifier", { fg = p.fg })
h("Function", { fg = p.fn })
h("Statement", { fg = p.kw, bold = true })
h("Keyword", { fg = p.kw, bold = true })
h("Conditional", { link = "Keyword" })
h("Repeat", { link = "Keyword" })
h("Label", { link = "Keyword" })
h("Exception", { link = "Keyword" })
h("Operator", { fg = p.fg })
h("PreProc", { fg = p.plum })
h("Include", { fg = p.plum })
h("Define", { fg = p.plum })
h("Macro", { fg = p.plum })
h("Type", { fg = p.teal })
h("StorageClass", { link = "Keyword" })
h("Structure", { fg = p.teal })
h("Special", { fg = p.teal })
h("Delimiter", { fg = p.fg })
h("Todo", { fg = p.bg, bg = p.warn, bold = true })
h("Error", { fg = p.err })
h("Underlined", { fg = p.fn, underline = true })

-- treesitter
h("@variable", { fg = p.fg })
h("@property", { fg = p.teal })
h("@parameter", { fg = p.fg, italic = true })
h("@constructor", { fg = p.teal })
h("@tag", { fg = p.kw })
h("@tag.attribute", { fg = p.teal })
h("@tag.delimiter", { fg = p.muted })
h("@markup.heading", { fg = p.kw, bold = true })
h("@markup.link", { fg = p.fn, underline = true })

-- diagnostics
h("DiagnosticError", { fg = p.err })
h("DiagnosticWarn", { fg = p.warn })
h("DiagnosticInfo", { fg = p.fn })
h("DiagnosticHint", { fg = p.teal })
h("DiagnosticUnderlineError", { undercurl = true, sp = p.err })
h("DiagnosticUnderlineWarn", { undercurl = true, sp = p.warn })
h("DiagnosticUnderlineInfo", { undercurl = true, sp = p.fn })
h("DiagnosticUnderlineHint", { undercurl = true, sp = p.teal })

-- diff / git
h("DiffAdd", { fg = p.str, bg = p.bg1 })
h("DiffChange", { bg = p.bg1 })
h("DiffDelete", { fg = p.err, bg = p.bg1 })
h("DiffText", { fg = p.warn, bg = p.bg2 })
h("Added", { fg = p.str })
h("Changed", { fg = p.warn })
h("Removed", { fg = p.err })
h("GitSignsAdd", { fg = p.str })
h("GitSignsChange", { fg = p.warn })
h("GitSignsDelete", { fg = p.err })
